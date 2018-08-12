#! /usr/bin/env perl

# texi2any: Texinfo converter.
#
# Copyright 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017
# Free Software Foundation, Inc.
# 
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License,
# or (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
# 
# Original author: Patrice Dumas <pertusus@free.fr>
# Parts (also from Patrice Dumas) come from texi2html.pl or texi2html.init.

# for POSIX::setlocale and File::Spec
require 5.00405;

use strict;

# for file names portability
use File::Spec;
# to determine the path separator and null file
use Config;
# for dirname and fileparse
use File::Basename;
#use Cwd;
use Getopt::Long qw(GetOptions);
# for carp
#use Carp;

Getopt::Long::Configure("gnu_getopt");

# This big BEGIN block deals with finding modules and 
# some dependencies that we ship 
# * in source or
# * installed or
# * installed relative to the script
BEGIN
{
  # emulate -w
  $^W = 1;
  my ($real_command_name, $command_directory, $command_suffix) 
     = fileparse($0, '.pl');
  my $updir = File::Spec->updir();

  # These are substituted by the Makefile to create "texi2any".
  my $datadir = '@datadir@';
  my $package = '@PACKAGE@';
  my $packagedir = '@pkglibdir@';

  if ($datadir eq '@' .'datadir@' or $package eq '@' . 'PACKAGE@'
      or $packagedir eq '@' .'pkglibdir@'
      or defined($ENV{'TEXINFO_DEV_SOURCE'})
         and $ENV{'TEXINFO_DEV_SOURCE'} ne '0')
  {
    # Use uninstalled modules

    # To find Texinfo::ModulePath
    if (!defined($ENV{'top_builddir'})) {
      $ENV{'top_builddir'} = File::Spec->catdir($command_directory, $updir);
    }
    unshift @INC, File::Spec->catdir($ENV{'top_builddir'}, 'tp');

    if (defined($ENV{'top_srcdir'})) {
      my $lib_dir = File::Spec->catdir($ENV{'top_srcdir'}, 'tp');
      unshift @INC, $lib_dir;
    }

    require Texinfo::ModulePath;
    Texinfo::ModulePath::init();
  } else {
    # Look for modules in their installed locations.

    my $lib_dir = File::Spec->catdir($datadir, $package);

    # try to make package relocatable, will only work if
    # standard relative paths are used
    if (! -f File::Spec->catfile($lib_dir, 'Texinfo', 'Parser.pm')
        and -f File::Spec->catfile($command_directory, $updir, 'share', 
                                   'texinfo', 'Texinfo', 'Parser.pm')) {
      $lib_dir = File::Spec->catdir($command_directory, $updir, 
                                          'share', 'texinfo');
    }
    unshift @INC, $lib_dir;

    require Texinfo::ModulePath;
    Texinfo::ModulePath::init($lib_dir, $packagedir);
  }
} # end BEGIN

BEGIN {
  my $enable_xs = '@enable_xs@';
  if ($enable_xs eq 'no') {
    package Texinfo::XSLoader;
    our $disable_XS;
    $disable_XS = 1;
  }
}

use Locale::Messages;
use Texinfo::Common;
use Texinfo::Convert::Converter;

my ($real_command_name, $command_directory, $command_suffix) 
   = fileparse($0, '.pl');

# this associates the command line options to the arrays set during
# command line parsing.
my @css_files = ();
my @css_refs = ();
my $cmdline_options = { 'CSS_FILES' => \@css_files,
                        'CSS_REFS' => \@css_refs };

# determine the path separators
my $path_separator = $Config{'path_sep'};
$path_separator = ':' if (!defined($path_separator));
my $quoted_path_separator = quotemeta($path_separator);

# Paths and file names
my $curdir = File::Spec->curdir();
my $updir = File::Spec->updir();

# set by configure, prefix for the sysconfdir and so on
# This could be used in the eval
my $prefix = '@prefix@';
my $datarootdir;
my $sysconfdir;
my $pkgdatadir;
my $datadir;

my $fallback_prefix = File::Spec->catdir(File::Spec->rootdir(), 'usr', 'local');

# We need to eval as $prefix has to be expanded. However when we haven't
# run configure @sysconfdir will be expanded as an array, thus we verify
# whether configure was run or not
if ('@sysconfdir@' ne '@' . 'sysconfdir@') {
  $sysconfdir = eval '"@sysconfdir@"';
} else {
  $sysconfdir = File::Spec->catdir($fallback_prefix, 'etc');
}

if ('@datarootdir@' ne '@' . 'datarootdir@') {
  $datarootdir = eval '"@datarootdir@"';
} else {
  $datarootdir = File::Spec->catdir($fallback_prefix, 'share');
}

if ('@datadir@' ne '@' . 'datadir@' and '@PACKAGE@' ne '@' . 'PACKAGE@') {
  $datadir = eval '"@datadir@"';
  my $package = '@PACKAGE@';
  $pkgdatadir = File::Spec->catdir($datadir, $package);
} else {
  $datadir = File::Spec->catdir($fallback_prefix, 'share');
  $pkgdatadir = File::Spec->catdir($datadir, 'texinfo');
}

# work-around in case libintl-perl do not do it itself
# see http://www.gnu.org/software/gettext/manual/html_node/The-LANGUAGE-variable.html#The-LANGUAGE-variable

if ((defined($ENV{"LC_ALL"}) and $ENV{"LC_ALL"} =~ /^(C|POSIX)$/)
     or (defined($ENV{"LANG"}) and $ENV{"LANG"} =~ /^(C|POSIX)$/)) {
  delete $ENV{"LANGUAGE"} if defined($ENV{"LANGUAGE"});
}


#my $messages_textdomain = 'texinfo';
my $messages_textdomain = '@PACKAGE@';
$messages_textdomain = 'texinfo' if ($messages_textdomain eq '@'.'PACKAGE@');
my $strings_textdomain = '@PACKAGE@' . '_document';
$strings_textdomain = 'texinfo_document' 
   if ($strings_textdomain eq '@'.'PACKAGE@' . '_document');

my $srcdir;
if (defined($ENV{'top_srcdir'})) {
  $srcdir = File::Spec->catdir($ENV{'top_srcdir'}, 'tp');
} else {
  $srcdir = $command_directory;
}

my $libsrcdir = File::Spec->catdir($srcdir, 'maintain');


# we want a reliable way to switch locale, so we don't use the system
# gettext.
Locale::Messages->select_package('gettext_pp');

#my @search_locale_dirs = ("$datadir/locale", (map $_ . '/LocaleData', @INC),
#  qw (/usr/share/locale /usr/local/share/locale));
my @search_locale_dirs = ();

if (($command_suffix eq '.pl' and !(defined($ENV{'TEXINFO_DEV_SOURCE'}) 
     and $ENV{'TEXINFO_DEV_SOURCE'} eq 0)) or $ENV{'TEXINFO_DEV_SOURCE'}) {
  # in case of build from the source directory, out of source build, 
  # this helps to locate the locales.
  my $locales_dir_found = 0;
  @search_locale_dirs = (
    File::Spec->catdir($libsrcdir, $updir, 'LocaleData'),
    File::Spec->catdir($curdir, 'LocaleData'),
    File::Spec->catdir($updir, $updir, $updir, 'tp', 'LocaleData'),
    File::Spec->catdir($updir, $updir, 'tp', 'LocaleData'));
  foreach my $locales_dir (@search_locale_dirs) {
    if (-d $locales_dir) {
      Locale::Messages::bindtextdomain ($strings_textdomain, $locales_dir);
      # the messages in this domain are not regenerated automatically, 
      # only when calling ./maintain/regenerate_perl_module_files.sh
      Locale::Messages::bindtextdomain ($messages_textdomain, $locales_dir);
      $locales_dir_found = 1;
      last;
    }
  }
  if (!$locales_dir_found) {
    warn "Locales dir for document strings not found (@search_locale_dirs)\n";
  }
} else {
  Locale::Messages::bindtextdomain ($strings_textdomain, 
                                    File::Spec->catdir($datadir, 'locale'));
  Locale::Messages::bindtextdomain ($messages_textdomain,
                                    File::Spec->catdir($datadir, 'locale'));
}

#Locale::Messages::bindtextdomain ($messages_textdomain, 
#                                  File::Spec->catdir($datadir, 'locale'));


# Version setting is complicated, because we cope with 
# * script with configure values substituted or not
# * script shipped as part of texinfo or as a standalone perl module

# When shipped as a perl modules, $hardcoded_version is set to undef here
# by a sed one liner.  The consequence is that configure.ac is not used
# to retrieve the version number.
# Otherwise this is only used as a safety value, and should never be used 
# in practice as a regexp extracts the version from configure.ac.
my $hardcoded_version = "0.00-hardcoded";
# Version set in configure.ac
my $configured_version = '@PACKAGE_VERSION@';
if ($configured_version eq '@' . 'PACKAGE_VERSION@') {
  # if not configured, and $hardcoded_version is set search for the version 
  # in configure.ac
  if (defined($hardcoded_version)) {
    if (open (CONFIGURE, 
              "< ".File::Spec->catfile($srcdir, $updir, 'configure.ac'))) {
      while (<CONFIGURE>) {
        if (/^AC_INIT\(\[[^\]]+\]\s*,\s*\[([^\]]+)\]\s*,/) {
          $configured_version = "$1+dev"; # +dev to distinguish from installed
          last;
        }
      }
      close (CONFIGURE);
    }
    # This should never be used, but is a safety value
    $configured_version = $hardcoded_version if (!defined($configured_version));
  } else {
    # used in the standalone perl module, as $hardcoded_version is undef
    # and it should never be configured in that setup
    require Texinfo::Parser;
    $configured_version = $Texinfo::Parser::VERSION;
  }
}

# Compare the version of this file with the version of the modules
# it is using.  If they are different, don't go any further.  This
# can happen if multiple versions of texi2any are installed under a
# different names, e.g. with the --program-suffix option to 'configure'.
# The version in Common.pm is checked because that file has been present
# since Texinfo 5.0 (the first release with texi2any in Perl).
if ($configured_version ne $Texinfo::Common::VERSION
    and $configured_version ne $Texinfo::Common::VERSION."+dev") {
  warn "This is texi2any $configured_version but modules ".
       "for texi2any $Texinfo::Common::VERSION found!\n";
  die "Your installation of Texinfo is broken; aborting.\n";
}


my $configured_package = '@PACKAGE@';
$configured_package = 'Texinfo' if ($configured_package eq '@' . 'PACKAGE@');
my $configured_name = '@PACKAGE_NAME@';
$configured_name = $configured_package 
  if ($configured_name eq '@' .'PACKAGE_NAME@');
my $configured_name_version = "$configured_name $configured_version"; 
my $configured_url = '@PACKAGE_URL@';
$configured_url = 'http://www.gnu.org/software/texinfo/'
  if ($configured_url eq '@' .'PACKAGE_URL@');

my $texinfo_dtd_version = '@TEXINFO_DTD_VERSION@';
# $hardcoded_version is undef for a standalone perl module
if ($texinfo_dtd_version eq '@' . 'TEXINFO_DTD_VERSION@') {
  $texinfo_dtd_version = undef;
  if (defined($hardcoded_version)) {
    if (open (CONFIGURE, 
            "< ".File::Spec->catfile($srcdir, $updir, 'configure.ac'))) {
      while (<CONFIGURE>) {
        if (/^TEXINFO_DTD_VERSION=([0-9]\S*)/) {
          $texinfo_dtd_version = "$1";
          last;
        }
      }
      close (CONFIGURE);
    }
  }
}
# Used in case it is not hardcoded in configure and for standalone perl module
$texinfo_dtd_version = $configured_version
  if (!defined($texinfo_dtd_version));

# defaults for options relevant in the main program, not undef, and also
# defaults for all the converters.
# Other relevant options (undef) are NO_WARN FORCE OUTFILE
# Others are set in the converters (SHOW_MENU).
my $converter_default_options = { 
    'ERROR_LIMIT' => 100,
    'TEXI2DVI' => 'texi2dvi',
    'PACKAGE_VERSION' => $configured_version,
    'PACKAGE' => $configured_package,
    'PACKAGE_NAME' => $configured_name,
    'PACKAGE_AND_VERSION' => $configured_name_version,
    'PACKAGE_URL' => $configured_url,
    'PROGRAM' => $real_command_name, 
    'TEXINFO_DTD_VERSION' => $texinfo_dtd_version,
};

# determine configuration directories.

my $conf_file_name = 'Config' ;
my $texinfo_htmlxref = 'htmlxref.cnf';

# directories for texinfo configuration files
my @language_config_dirs = File::Spec->catdir($curdir, '.texinfo');
push @language_config_dirs, File::Spec->catdir($ENV{'HOME'}, '.texinfo') 
                                if (defined($ENV{'HOME'}));
push @language_config_dirs, File::Spec->catdir($sysconfdir, 'texinfo') 
                               if (defined($sysconfdir));
push @language_config_dirs, File::Spec->catdir($datadir, 'texinfo') 
                               if (defined($datadir));
my @texinfo_config_dirs = ($curdir, @language_config_dirs);

my @program_config_dirs;
my @program_init_dirs;

my $program_name = 'texi2any';
@program_config_dirs = ($curdir, File::Spec->catdir($curdir, ".$program_name"));
push @program_config_dirs, File::Spec->catdir($ENV{'HOME'}, ".$program_name")
       if (defined($ENV{'HOME'}));
push @program_config_dirs, File::Spec->catdir($sysconfdir, $program_name) 
       if (defined($sysconfdir));
push @program_config_dirs, File::Spec->catdir($datadir, $program_name) 
  if (defined($datadir));

@program_init_dirs = @program_config_dirs;
foreach my $texinfo_config_dir (@language_config_dirs) {
  push @program_init_dirs, File::Spec->catdir($texinfo_config_dir, 'init');
}

# Namespace for configuration
{
package Texinfo::Config;

#use Carp;

# passed from main program
my $cmdline_options;
my $default_options;
# used in main program
our $options = {};

sub _load_config($$) {
  $default_options = shift;
  $cmdline_options = shift;
  #print STDERR "cmdline_options: ".join('|',keys(%$cmdline_options))."\n";
}

sub _load_init_file($) {
  my $file = shift;
  require Texinfo::Convert::HTML;
  eval { require($file) ;};
  my $e = $@;
  if ($e ne '') {
    main::document_warn(sprintf(main::__("error loading %s: %s\n"), 
                                 $file, $e));
  }
}

# FIXME: maybe use an opaque return status that can be used to retrieve
# an error message?
sub set_from_init_file($$) {
  my $var = shift;
  my $value = shift;
  if (!Texinfo::Common::valid_option($var)) {
    # carp may be better, but infortunately, it points to the routine that 
    # loads the file, and not to the init file.
    main::document_warn(sprintf(main::__("%s: unknown variable %s"), 
                                'set_from_init_file', $var));
    return 0;
  } elsif (Texinfo::Common::obsolete_option($var)) {
    main::document_warn(sprintf(main::__("%s: obsolete variable %s\n"), 
                                  'set_from_init_file', $var));
  }
  return 0 if (defined($cmdline_options->{$var}));
  delete $default_options->{$var};
  $options->{$var} = $value;
  return 1;
}

sub set_from_cmdline($$) {
  my $var = shift;
  my $value = shift;
  delete $options->{$var};
  delete $default_options->{$var};
  if (!Texinfo::Common::valid_option($var)) {
    main::document_warn(sprintf(main::__("%s: unknown variable %s\n"), 
                                'set_from_cmdline', $var));
    return 0;
  } elsif (Texinfo::Common::obsolete_option($var)) {
    main::document_warn(sprintf(main::__("obsolete variable %s\n"), 
                                'set_from_cmdline', $var));
  }
  $cmdline_options->{$var} = $value;
  return 1;
}

# This also could get and set some @-command results.
# FIXME But it does not take into account what happens during conversion,
# for that something like $converter->get_conf(...) has to be used.
sub get_conf($) {
  my $var = shift;
  if (exists($cmdline_options->{$var})) {
    return $cmdline_options->{$var};
  } elsif (exists($options->{$var})) {
    return $options->{$var};
  } elsif (exists($default_options->{$var})) {
    return $default_options->{$var};
  } else {
    return undef;
  }
}

}
# back in main program namespace

# file:        file name to locate. It can be a file path.
# directories: a reference on a array containing a list of directories to
#              search the file in. 
# all_files:   if true collect all the files with that name, otherwise stop
#              at first match.
sub locate_init_file($$$)
{
  my $file = shift;
  my $directories = shift;
  my $all_files = shift;

  if (File::Spec->file_name_is_absolute($file)) {
    return $file if (-e $file and -r $file);
  } else {
    my @files;
    foreach my $dir (@$directories) {
      next unless (-d $dir);
      my $possible_file = File::Spec->catfile($dir, $file);
      if ($all_files) {
        push (@files, $possible_file) 
          if (-e $possible_file and -r $possible_file);
      } else {
        return $possible_file if (-e $possible_file and -r $possible_file);
      }
    }
    return @files if ($all_files);
  }
  return undef;
}

sub locate_and_load_init_file($$)
{
  my $filename = shift;
  my $directories = shift;

  my $file = locate_init_file($filename, $directories, 0);
  if (defined($file)) {
    Texinfo::Config::_load_init_file($file);
  } else {
    document_warn(sprintf(__("could not read init file %s"), $filename));
  }
}

# read initialization files
foreach my $file (locate_init_file($conf_file_name, 
                  [ reverse(@program_config_dirs) ], 1)) {
  Texinfo::Config::_load_init_file($file);
}

sub set_from_cmdline($$) {
  return &Texinfo::Config::set_from_cmdline(@_);
}

sub set_from_init_file($$) {
  return &Texinfo::Config::set_from_init_file(@_);
}

sub get_conf($) {
  return &Texinfo::Config::get_conf(@_);
}

my @input_file_suffixes = ('.txi','.texinfo','.texi','.txinfo','');

my @texi2dvi_args = ();

my $format = 'info';
# this is the format associated with the output format, which is replaced
# when the output format changes.  It may also be removed if there is the
# corresponding --no-ifformat.
my $default_expanded_format = [ $format ];
my @conf_dirs = ();
my @include_dirs = ();
my @prepend_dirs = ();

# options for all the files
my $parser_default_options = {'expanded_formats' => [], 
                              'values' => {'txicommandconditionals' => 1},
                              'gettext' => \&__,
                              'pgettext' => \&__p,};

Texinfo::Config::_load_config($converter_default_options, $cmdline_options);

sub set_expansion($$) {
  my $region = shift;
  my $set = shift;
  $set = 1 if (!defined($set));
  if ($set) {
    push @{$parser_default_options->{'expanded_formats'}}, $region
      unless (grep {$_ eq $region} @{$parser_default_options->{'expanded_formats'}});
  } else {
    @{$parser_default_options->{'expanded_formats'}} = 
      grep {$_ ne $region} @{$parser_default_options->{'expanded_formats'}};
    @{$default_expanded_format} 
       = grep {$_ ne $region} @{$default_expanded_format};
  }
}

my $format_from_command_line = 0;

my %format_command_line_names = (
  'xml' => 'texinfoxml',
);

my %formats_table = (
 'info' => {
             'nodes_tree' => 1,
             'floats' => 1,
             'module' => 'Texinfo::Convert::Info'
           },
  'plaintext' => {
             'nodes_tree' => 1,
             'floats' => 1,
             'split' => 1,
             'module' => 'Texinfo::Convert::Plaintext'
           },
  'html' => {
             'nodes_tree' => 1,
             'floats' => 1,
             'split' => 1,
             'internal_links' => 1,
             'simple_menu' => 1,
             'move_index_entries_after_items' => 1,
             'no_warn_non_empty_parts' => 1,
             'module' => 'Texinfo::Convert::HTML'
           },
  'texinfoxml' => {
             'nodes_tree' => 1,
             'module' => 'Texinfo::Convert::TexinfoXML',
             'floats' => 1,
           },
  'texinfosxml' => {
             'nodes_tree' => 1,
             'module' => 'Texinfo::Convert::TexinfoSXML',
             'floats' => 1,
           },
  'ixinsxml' => {
             'nodes_tree' => 1,
             'module' => 'Texinfo::Convert::IXINSXML'
           },
  'docbook' => {
             'move_index_entries_after_items' => 1,
             'no_warn_non_empty_parts' => 1,
             'module' => 'Texinfo::Convert::DocBook'
           },
  'pdf' => {
             'texi2dvi_format' => 1,
           },
  'ps' =>  {
             'texi2dvi_format' => 1,
           },
  'dvi' => {
             'texi2dvi_format' => 1,
           },
  'dvipdf' => {
             'texi2dvi_format' => 1,
           },
  'debugtree' => {
          'split' => 1,
          'module' => 'DebugTexinfo::DebugTree'
         },
  'textcontent' => {
            'module' => 'Texinfo::Convert::TextContent'
           },
  'rawtext' => {
            'module' => 'Texinfo::Convert::Text'
           },
  'plaintexinfo' => {
            'module' => 'Texinfo::Convert::PlainTexinfo'
           },
  'parse' => {
           },
  'structure' => {
             'nodes_tree' => 1,
             'floats' => 1,
             'split' => 1,
           },
);

my $call_texi2dvi = 0;

# previous_format should be in argument if there is a possibility of error.
# as a fallback, the $format global variable is used.
sub set_format($;$$)
{
  my $set_format = shift;
  my $previous_format = shift;
  $previous_format = $format if (!defined($previous_format));
  my $do_not_override_command_line = shift;

  my $new_format;
  if ($format_command_line_names{$set_format}) {
    $new_format = $format_command_line_names{$set_format};
  } else {
    $new_format = $set_format;
  }
  my $expanded_format = $set_format;
  if (!$formats_table{$new_format}) {
    document_warn(sprintf(__("ignoring unrecognized TEXINFO_OUTPUT_FORMAT value `%s'\n"), 
                 $new_format));
    $new_format = $previous_format;
  } else {
    if ($format_from_command_line and $do_not_override_command_line) {
      $new_format = $previous_format;
    } else {
      if ($formats_table{$new_format}->{'texi2dvi_format'}) {
        $call_texi2dvi = 1;
        push @texi2dvi_args, '--'.$new_format; 
        $expanded_format = 'tex';
      }
      if ($Texinfo::Common::texinfo_output_formats{$expanded_format}) {
        if ($expanded_format eq 'plaintext') {
          $default_expanded_format = [$expanded_format, 'info'] 
        } else {
          $default_expanded_format = [$expanded_format] 
        }
      }
      $format_from_command_line = 1
        unless ($do_not_override_command_line);
    }
  }
  return $new_format;
}

sub set_global_format($)
{
  my $set_format = shift;
  $format = set_format($set_format);
}

sub document_warn($) {
  return if (get_conf('NO_WARN'));
  my $text = shift;
  chomp ($text);
  warn(sprintf(__p("program name: warning: warning_message", 
                   "%s: warning: %s\n"), $real_command_name,  $text));
}

sub _exit($$)
{
  my $error_count = shift;
  my $opened_files = shift;

  if ($error_count and $opened_files and !get_conf('FORCE')) {
    while (@$opened_files) {
      my $opened_file = shift (@$opened_files);
      unlink ($opened_file);
    }
  }
  exit (1) if ($error_count and (!get_conf('FORCE')
     or $error_count > get_conf('ERROR_LIMIT')));
}

sub handle_errors($$$)
{
  my $self = shift;
  my $error_count = shift;
  my $opened_files = shift;
  my ($errors, $new_error_count) = $self->errors();
  $error_count += $new_error_count if ($new_error_count);
  foreach my $error_message (@$errors) {
    warn $error_message->{'error_line'} if ($error_message->{'type'} eq 'error'
                                           or !get_conf('NO_WARN'));
  }
  
  _exit($error_count, $opened_files);
  return $error_count;
}


sub _get_converter_default($)
{
  my $option = shift;
  return $Texinfo::Convert::Converter::all_converters_defaults{$option}
   if (defined($Texinfo::Convert::Converter::all_converters_defaults{$option}));
  return undef;
}

sub makeinfo_help()
{
  my $makeinfo_help =
    sprintf(__("Usage: %s [OPTION]... TEXINFO-FILE...\n"),
    $real_command_name . $command_suffix)
."\n".
__("Translate Texinfo source documentation to various other formats, by default
Info files suitable for reading online with Emacs or standalone GNU Info.

This program is commonly installed as both `makeinfo' and `texi2any';
the behavior is identical, and does not depend on the installed name.\n")
."\n";
  $makeinfo_help .= sprintf(__("General options:
      --document-language=STR locale to use in translating Texinfo keywords
                                for the output document (default C).
      --error-limit=NUM       quit after NUM errors (default %d).
      --force                 preserve output even if errors.
      --help                  display this help and exit.
      --no-validate           suppress node cross-reference validation.
      --no-warn               suppress warnings (but not errors).
      --conf-dir=DIR          search also for initialization files in DIR.
      --init-file=FILE        load FILE to modify the default behavior.
  -c, --set-customization-variable VAR=VAL  set customization variable VAR 
                                to value VAL.
  -v, --verbose               explain what is being done.
      --version               display version information and exit.\n"),
    get_conf('ERROR_LIMIT'))
."\n";
  $makeinfo_help .= __("Output format selection (default is to produce Info):
      --docbook               output Docbook XML rather than Info.
      --html                  output HTML rather than Info.
      --plaintext             output plain text rather than Info.
      --xml                   output Texinfo XML rather than Info.
      --dvi, --dvipdf, --ps, --pdf  call texi2dvi to generate given output,
                                after checking validity of TEXINFO-FILE.\n")
."\n";
  $makeinfo_help .= __("General output options:
  -E, --macro-expand=FILE     output macro-expanded source to FILE,
                                ignoring any \@setfilename.
      --no-headers            suppress node separators, Node: lines, and menus
                                from Info output (thus producing plain text)
                                or from HTML (thus producing shorter output).
                                Also, if producing Info, write to
                                standard output by default.
      --no-split              suppress any splitting of the output;
                                generate only one output file.
      --[no-]number-sections  output chapter and sectioning numbers;
                                default is on.
  -o, --output=DEST           output to DEST.
                                With split output, create DEST as a directory
                                 and put the output files there.
                                With non-split output, if DEST is already
                                 a directory or ends with a /,
                                 put the output file there.
                                Otherwise, DEST names the output file.\n")
."\n";
  $makeinfo_help .= sprintf(__("Options for Info and plain text:
      --disable-encoding      do not output accented and special characters
                                in Info output based on \@documentencoding.
      --enable-encoding       override --disable-encoding (default).
      --fill-column=NUM       break Info lines at NUM characters (default %d).
      --footnote-style=STYLE  output footnotes in Info according to STYLE:
                                `separate' to put them in their own node;
                                `end' to put them at the end of the node, in
                                which they are defined (this is the default).
      --paragraph-indent=VAL  indent Info paragraphs by VAL spaces (default %d).
                                If VAL is `none', do not indent; if VAL is
                                `asis', preserve existing indentation.
      --split-size=NUM        split Info files at size NUM (default %d).\n"),
    _get_converter_default('fillcolumn'), 
    _get_converter_default('paragraphindent'), 
    _get_converter_default('SPLIT_SIZE'))
."\n";
  $makeinfo_help .= __("Options for HTML:
      --css-include=FILE      include FILE in HTML <style> output;
                                read stdin if FILE is -.
      --css-ref=URL           generate CSS reference to URL.
      --internal-links=FILE   produce list of internal links in FILE.
      --split=SPLIT           split at SPLIT, where SPLIT may be `chapter',
                                `section' or `node'.
      --transliterate-file-names  use file names in ASCII transliteration.
      --node-files            produce redirection files for nodes and 
                                anchors; default is set only if split.\n")
."\n";
  $makeinfo_help .= __("Options for XML and Docbook:
      --output-indent=VAL     does nothing, retained for compatibility.\n")
."\n";
  $makeinfo_help .= __("Options for DVI/PS/PDF:
      --Xopt=OPT              pass OPT to texi2dvi; can be repeated.\n")
."\n";
  $makeinfo_help .= __("Input file options:
      --commands-in-node-names  does nothing, retained for compatibility.
  -D VAR                        define the variable VAR, as with \@set.
  -D 'VAR VAL'                  define VAR to VAL (one shell argument).
  -I DIR                        append DIR to the \@include search path.
  -P DIR                        prepend DIR to the \@include search path.
  -U VAR                        undefine the variable VAR, as with \@clear.\n")
."\n";
  $makeinfo_help .= __("Conditional processing in input:
  --ifdocbook       process \@ifdocbook and \@docbook even if
                      not generating Docbook.
  --ifhtml          process \@ifhtml and \@html even if not generating HTML.
  --ifinfo          process \@ifinfo even if not generating Info.
  --ifplaintext     process \@ifplaintext even if not generating plain text.
  --iftex           process \@iftex and \@tex.
  --ifxml           process \@ifxml and \@xml.
  --no-ifdocbook    do not process \@ifdocbook and \@docbook text.
  --no-ifhtml       do not process \@ifhtml and \@html text.
  --no-ifinfo       do not process \@ifinfo text.
  --no-ifplaintext  do not process \@ifplaintext text.
  --no-iftex        do not process \@iftex and \@tex text.
  --no-ifxml        do not process \@ifxml and \@xml text.

  Also, for the --no-ifFORMAT options, do process \@ifnotFORMAT text.\n")
."\n";
  $makeinfo_help .= __("  The defaults for the \@if... conditionals depend on the output format:
  if generating Docbook, --ifdocbook is on and the others are off;
  if generating HTML, --ifhtml is on and the others are off;
  if generating Info, --ifinfo is on and the others are off;
  if generating plain text, --ifplaintext is on and the others are off;
  if generating XML, --ifxml is on and the others are off.\n")
."\n";
  $makeinfo_help .= __("Examples:
  makeinfo foo.texi                      write Info to foo's \@setfilename
  makeinfo --html foo.texi               write HTML to \@setfilename
  makeinfo --xml foo.texi                write Texinfo XML to \@setfilename
  makeinfo --docbook foo.texi            write Docbook XML to \@setfilename
  makeinfo --plaintext foo.texi          write plain text to standard output
  makeinfo --pdf foo.texi                write PDF using texi2dvi

  makeinfo --html --no-headers foo.texi  write html without node lines, menus
  makeinfo --number-sections foo.texi    write Info with numbered sections
  makeinfo --no-split foo.texi           write one Info file however big\n")
."\n";
  $makeinfo_help .= __("Email bug reports to bug-texinfo\@gnu.org,
general questions and discussion to help-texinfo\@gnu.org.
Texinfo home page: http://www.gnu.org/software/texinfo/") ."\n";
  return $makeinfo_help;
}

my $Xopt_arg_nr = 0;
my $latex2html_file = 'latex2html.pm';

my $result_options = Getopt::Long::GetOptions (
 'help|h' => sub { print makeinfo_help(); exit 0; },
 'version|V' => sub {print "$program_name (GNU texinfo) $configured_version\n\n";
    printf __("Copyright (C) %s Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.\n"), "2017";
      exit 0;},
 'macro-expand|E=s' => sub { set_from_cmdline('MACRO_EXPAND', $_[1]); },
 'ifhtml!' => sub { set_expansion('html', $_[1]); },
 'ifinfo!' => sub { set_expansion('info', $_[1]); },
 'ifxml!' => sub { set_expansion('xml', $_[1]); },
 'ifdocbook!' => sub { set_expansion('docbook', $_[1]); },
 'iftex!' => sub { set_expansion('tex', $_[1]); },
 'ifplaintext!' => sub { set_expansion('plaintext', $_[1]); },
 'I=s' => sub { push @texi2dvi_args, ('-'.$_[0], $_[1]);
                push @include_dirs, split(/$quoted_path_separator/, $_[1]); },
 'conf-dir=s' => sub { push @conf_dirs, split(/$quoted_path_separator/, $_[1]); },
 'P=s' => sub { unshift @prepend_dirs, split(/$quoted_path_separator/, $_[1]); },
 'number-sections!' => sub { set_from_cmdline('NUMBER_SECTIONS', $_[1]); },
 'number-footnotes!' => sub { set_from_cmdline('NUMBER_FOOTNOTES', $_[1]); },
 'node-files!' => sub { set_from_cmdline('NODE_FILES', $_[1]); },
 'footnote-style=s' => sub {
    if ($_[1] eq 'end' or $_[1] eq 'separate') {
       set_from_cmdline('footnotestyle', $_[1]);
    } else {
      die sprintf(__("%s: --footnote-style arg must be `separate' or `end', not `%s'.\n"), $real_command_name, $_[1]);
    }
  },
 'split=s' => sub {  my $split = $_[1];
                     my @messages 
                       = Texinfo::Common::warn_unknown_split($_[1], \&__);
                     if (@messages) {
                       foreach my $message (@messages) {
                         document_warn($message);
                       }
                       $split = 'node';
                     }
                     set_from_cmdline('SPLIT', $split); },
 'no-split' => sub { set_from_cmdline('SPLIT', ''); 
                     set_from_cmdline('SPLIT_SIZE', undef);},
 'headers!' => sub { set_from_cmdline('HEADERS', $_[1]);
                     set_from_cmdline('SHOW_MENU', $_[1]);
                     $format = 'plaintext' if (!$_[1] and $format eq 'info'); },
 'output|out|o=s' => sub {
    my $var = 'OUTFILE';
    if ($_[1] =~ m:/$: or -d $_[1]) {
      set_from_cmdline($var, undef);
      $var = 'SUBDIR';
    }
    set_from_cmdline($var, $_[1]);
    set_from_cmdline('OUT', $_[1]);
    push @texi2dvi_args, '-o', $_[1];
  },
 'no-validate|no-pointer-validate' => sub {
      set_from_cmdline('novalidate',$_[1]);
      $parser_default_options->{'info'}->{'novalidate'} = $_[1];
    },
 'no-warn' => sub { set_from_cmdline('NO_WARN', $_[1]); },
 'verbose|v!' => sub {set_from_cmdline('VERBOSE', $_[1]); 
                     push @texi2dvi_args, '--verbose'; },
 'document-language=s' => sub {
                      set_from_cmdline('documentlanguage', $_[1]); 
                      $parser_default_options->{'documentlanguage'} = $_[1];
                      my @messages 
                       = Texinfo::Common::warn_unknown_language($_[1], \&__);
                      foreach my $message (@messages) {
                        document_warn($message);
                      }
                    },
 'D=s' => sub {
    my $var = $_[1];
    my @field = split (/\s+/, $var, 2);
    if (@field == 1) {
      $parser_default_options->{'values'}->{$var} = 1;
    } else {
      $parser_default_options->{'values'}->{$field[0]} = $field[1];
    }
 },
 'U=s' => sub {delete $parser_default_options->{'values'}->{$_[1]};},
 'init-file=s' => sub {
    locate_and_load_init_file($_[1], [ @conf_dirs, @program_init_dirs ]);
 },
 'set-customization-variable|c=s' => sub {
   my $var_val = $_[1];
   if ($var_val =~ s/^(\w+)\s*=?\s*//) {
     my $var = $1;
     my $value = $var_val;
     if ($value =~ /^undef$/i) {
       $value = undef;
     }
     # special format
     if ($var eq 'TEXINFO_OUTPUT_FORMAT') {
       $format = set_format($value, $format, 1);
     } elsif ($var eq 'TEXI2HTML') {
       $format = set_format('html');
       $parser_default_options->{'values'}->{'texi2html'} = 1;
     }
     set_from_cmdline($var, $value);
     # FIXME do that here or when all command line options are processed?
     if ($var eq 'L2H' and get_conf('L2H')) {
       locate_and_load_init_file($latex2html_file, 
                             [ @conf_dirs, @program_init_dirs ]);
     }
   }
 },
 'css-include=s' => \@css_files,
 'css-ref=s' => \@css_refs,
 'transliterate-file-names!' => 
     sub {set_from_cmdline('TRANSLITERATE_FILE_NAMES', $_[1]);},
 'error-limit|e=i' => sub { set_from_cmdline('ERROR_LIMIT', $_[1]); },
 'split-size=s' => sub {set_from_cmdline('SPLIT_SIZE', $_[1])},
 'paragraph-indent|p=s' => sub {
    my $value = $_[1];
    if ($value =~ /^([0-9]+)$/ or $value eq 'none' or $value eq 'asis') {
      set_from_cmdline('paragraphindent', $_[1]);
    } else {
      die sprintf(__("%s: --paragraph-indent arg must be numeric/`none'/`asis', not `%s'.\n"), 
                  $real_command_name, $value);
    }
 },
 'fill-column|f=i' => sub {set_from_cmdline('FILLCOLUMN',$_[1]);},
 'enable-encoding' => sub {set_from_cmdline('ENABLE_ENCODING',$_[1]);
                     $parser_default_options->{'ENABLE_ENCODING'} = $_[1];},
 'disable-encoding' => sub {set_from_cmdline('ENABLE_ENCODING', 0);
                     $parser_default_options->{'ENABLE_ENCODING'} = 0;},
 'internal-links=s' => sub {set_from_cmdline('INTERNAL_LINKS', $_[1]);},
 'force|F' => sub {set_from_cmdline('FORCE', $_[1]);},
 'commands-in-node-names' => sub { ;},
 'output-indent=i' => sub { ;},
 'reference-limit=i' => sub { ;},
 'Xopt=s' => sub {push @texi2dvi_args, $_[1]; $Xopt_arg_nr++},
 'silent|quiet' => sub {set_from_cmdline('SILENT', $_[1]);
                         push @texi2dvi_args, '--'.$_[0];},
   
 'plaintext' => sub {$format = set_format($_[0].'');},
 'html' => sub {$format = set_format($_[0].'');},
 'info' => sub {$format = set_format($_[0].'');},
 'docbook' => sub {$format = set_format($_[0].'');},
 'xml' => sub {$format = set_format($_[0].'');},
 'dvi' => sub {$format = set_format($_[0].'');},
 'dvipdf' => sub {$format = set_format($_[0].'');},
 'ps' => sub {$format = set_format($_[0].'');},
 'pdf' => sub {$format = set_format($_[0].'');},
 'debug=i' => sub {set_from_cmdline('DEBUG', $_[1]); 
                   $parser_default_options->{'DEBUG'} = $_[1];
                   push @texi2dvi_args, '--'.$_[0]; },
);

exit 1 if (!$result_options);

# For tests, set some strings to values not changing with releases
my %test_conf = (
    'PACKAGE_VERSION' => '',
    'PACKAGE' => 'texinfo',
    'PACKAGE_NAME' => 'texinfo',
    'PACKAGE_AND_VERSION' => 'texinfo',
    'PACKAGE_URL' => 'http://www.gnu.org/software/texinfo/',
# maybe don't set this?
    'PROGRAM' => 'texi2any', 
);
if (get_conf('TEST')) {
  foreach my $conf (keys (%test_conf)) {
    $converter_default_options->{$conf} = $test_conf{$conf};
  }
}


my %format_names = (
 'info' => 'Info',
 'html' => 'HTML',
 'docbook' => 'DocBook',
 'texinfoxml' => 'Texinfo XML',
 'plaintext' => 'Plain Text',
);

sub format_name($)
{
  my $format = shift;
  if ($format_names{$format}) {
    return $format_names{$format};
  } else {
    return $format;
  }
}


if (defined($ENV{'TEXINFO_OUTPUT_FORMAT'}) 
    and $ENV{'TEXINFO_OUTPUT_FORMAT'} ne '') {
  $format = set_format($ENV{'TEXINFO_OUTPUT_FORMAT'}, $format, 1);
}

if ($call_texi2dvi) {
  if (defined(get_conf('OUT')) and @ARGV > 1) {
    die sprintf(__('%s: when generating %s, only one input FILE may be specified with -o'."\n"),
                $real_command_name, format_name($format));
  }
} elsif($Xopt_arg_nr) {
  document_warn(__('--Xopt option without printed output')); 
}

require Texinfo::Parser;
require Texinfo::Structuring;
require Texinfo::Transformations;
# Avoid loading these modules until down here to speed up the case
# when they are not needed.

my %tree_transformations;
if (get_conf('TREE_TRANSFORMATIONS')) {
  my @transformations = split /,/, get_conf('TREE_TRANSFORMATIONS');
  foreach my $transformation (@transformations) {
    if (Texinfo::Common::valid_tree_transformation($transformation)) {
      $tree_transformations{$transformation} = 1;
    } else {
      document_warn(sprintf(__('unknown tree transformation %s'), 
                     $transformation));
    }
  }
}

if (get_conf('SPLIT') and !$formats_table{$format}->{'split'}) {
  document_warn(sprintf(__('ignoring splitting for format %s'), 
                        format_name($format)));
  set_from_cmdline('SPLIT', ''); 
}

foreach my $expanded_format (@{$default_expanded_format}) {
  push @{$parser_default_options->{'expanded_formats'}}, $expanded_format 
    unless (grep {$_ eq $expanded_format} @{$parser_default_options->{'expanded_formats'}});
}

my $converter_class;
my %converter_defaults;

if (defined($formats_table{$format}->{'module'})) {
  # Speed up initialization by only loading the module we need.
  eval "require $formats_table{$format}->{'module'};"
      or die "$@";
  eval '$formats_table{$format}->{\'converter\'} = sub{'.
                $formats_table{$format}->{'module'}
        .'->converter(@_)};';
}

# This gets the class right, even though there is a sub...
if (defined($formats_table{$format}->{'converter'})) {
  $converter_class = ref(&{$formats_table{$format}->{'converter'}});
  %converter_defaults = $converter_class->converter_defaults();
}

# FIXME should this be set when the --set is set too?  The corresponding
# code is ready above, but commented out.
# using no warnings is wrong, but a way to avoid a spurious warning.
no warnings 'once';
foreach my $parser_settable_option (
                keys(%Texinfo::Parser::default_customization_values)) {
  if (defined(get_conf($parser_settable_option))) {
    $parser_default_options->{$parser_settable_option} 
       = get_conf($parser_settable_option);
  } elsif (defined($converter_class) 
           and defined($converter_defaults{$parser_settable_option})) {
    $parser_default_options->{$parser_settable_option} 
       = $converter_defaults{$parser_settable_option};
  }
}

## using no warnings is wrong, but a way to avoid a spurious warning.
#no warnings 'once';
# The configuration options are upper-cased when considered as 
# customization variables, and lower-cased when passed to the Parser
foreach my $parser_option (map {uc($_)} 
                  (keys (%Texinfo::Common::default_parser_state_configuration))) {
  $parser_default_options->{lc($parser_option)} = get_conf($parser_option)
    if (defined(get_conf($parser_option)));
}


# Main processing, process all the files given on the command line

my @input_files = @ARGV;
# use STDIN if not a tty, like makeinfo does
@input_files = ('-') if (!scalar(@input_files) and !-t STDIN);
die sprintf(__("%s: missing file argument.\n"), $real_command_name) 
   .sprintf(__("Try `%s --help' for more information.\n"), $real_command_name)
     unless (scalar(@input_files) >= 1);

my $file_number = -1;
my @opened_files = ();
my %unclosed_files;
my $error_count = 0;
# main processing
while(@input_files) {
  $file_number++;
  my $input_file_arg = shift(@input_files);
  my $input_file_name;
  # try to concatenate with different suffixes. The last suffix is ''
  # such that the plain file name is checked.
  foreach my $suffix (@input_file_suffixes) {
    if (-e $input_file_arg.$suffix) {
      $input_file_name = $input_file_arg.$suffix;
      last;
    }
  }
  # in case no file was found, still set the file name
  $input_file_name = $input_file_arg if (!defined($input_file_name));

  my ($input_filename, $input_directory, $suffix) = fileparse($input_file_name);
  if (!defined($input_directory) or $input_directory eq '') {
    $input_directory = $curdir;
  }

  my $input_file_base = $input_file_name;
  $input_file_base =~ s/\.te?x(i|info)?$//;

  my @htmlxref_dirs;
  if (get_conf('TEST')) {
    # to have reproducible tests, do not use system or user
    # directories if TEST is set.
    @htmlxref_dirs = File::Spec->catdir($curdir, '.texinfo');
  } else {
    @htmlxref_dirs = @language_config_dirs;
  }
  if ($input_directory ne '.' and $input_directory ne '') {
    unshift @htmlxref_dirs, $input_directory;
  }
  unshift @htmlxref_dirs, '.';

  my @texinfo_htmlxref_files;
  my $init_file_from_conf = get_conf('HTMLXREF');
  if ($init_file_from_conf) {
    @texinfo_htmlxref_files = ( $init_file_from_conf );
  } else {
    @texinfo_htmlxref_files 
      = locate_init_file ($texinfo_htmlxref, \@htmlxref_dirs, 1);
  }

  my $parser_options = { %$parser_default_options };

  $parser_options->{'include_directories'} = [@include_dirs];
  my @prependended_include_directories = ('.');
  push @prependended_include_directories, $input_directory
      if ($input_directory ne '.');
  unshift @{$parser_options->{'include_directories'}},
     @prependended_include_directories;
  unshift @{$parser_options->{'include_directories'}}, @prepend_dirs;

  my $parser = Texinfo::Parser::parser($parser_options);
  my $tree = $parser->parse_texi_file($input_file_name);

  #my $global_commands = $parser->global_commands_information();
  #print STDERR join('|', keys(%$global_commands))."\n";

  if (defined($tree)
      and (defined(get_conf('DUMP_TREE')) 
           or (get_conf('DEBUG') and get_conf('DEBUG') >= 10))) {
    # this is very wrong, but a way to avoid a spurious warning.
    no warnings 'once';
    local $Data::Dumper::Purity = 1;
    no warnings 'once';
    local $Data::Dumper::Indent = 1;
    print STDERR Data::Dumper->Dump([$tree]);
  }
  if (!defined($tree) or $format eq 'parse') {
    handle_errors($parser, $error_count, \@opened_files);
    next;
  }


  if ($tree_transformations{'fill_gaps_in_sectioning'}) {
    my ($filled_contents, $added_sections) 
      = Texinfo::Transformations::fill_gaps_in_sectioning($tree);
    if (!defined($filled_contents)) {
      document_warn(__("fill_gaps_in_sectioning transformation return no result. No section?"));
    } else {
      $tree->{'contents'} = $filled_contents;
    }
  }
  if ((get_conf('SIMPLE_MENU')
       and $formats_table{$format}->{'simple_menu'})
      or $tree_transformations{'simple_menus'}) {
    $parser->Texinfo::Transformations::set_menus_to_simple_menu();
  }

  if (defined(get_conf('MACRO_EXPAND')) and $file_number == 0) {
    require Texinfo::Convert::Texinfo;
    my $texinfo_text = Texinfo::Convert::Texinfo::convert($tree, 1);
    #print STDERR "$texinfo_text\n";
    my $macro_expand_file = get_conf('MACRO_EXPAND');
    my $macro_expand_fh = Texinfo::Common::open_out($parser, 
                        $macro_expand_file, $parser->{'INPUT_PERL_ENCODING'});

    my $error_macro_expand_file;
    if (defined($macro_expand_fh)) {
      print $macro_expand_fh $texinfo_text;
      if (!close($macro_expand_fh)) {
        document_warn(sprintf(__("error on closing macro expand file %s: %s\n"), 
                              $macro_expand_file, $!));
        $error_macro_expand_file = 1;
      }
      $parser->Texinfo::Convert::Converter::register_close_file($macro_expand_file);
    } else {
      document_warn(sprintf(__("could not open %s for writing: %s\n"), 
                            $macro_expand_file, $!));
      $error_macro_expand_file = 1;
    }

    if ($error_macro_expand_file) {
      $error_count++;
      _exit($error_count, \@opened_files);
    }
  }
  if (get_conf('DUMP_TEXI') or $formats_table{$format}->{'texi2dvi_format'}) {
    handle_errors($parser, $error_count, \@opened_files);
    next;
  }

  if ($formats_table{$format}->{'move_index_entries_after_items'}
      or $tree_transformations{'move_index_entries_after_items'}) {
    Texinfo::Common::move_index_entries_after_items_in_tree($tree);
  }

  if ($tree_transformations{'insert_nodes_for_sectioning_commands'}) {
    my ($modified_contents, $added_nodes)
     = Texinfo::Transformations::insert_nodes_for_sectioning_commands($parser, $tree);
    if (!defined($modified_contents)) {
      document_warn(__(
       "insert_nodes_for_sectioning_commands transformation return no result. No section?"));
    } else {
      $tree->{'contents'} = $modified_contents;
    }
  }

  Texinfo::Structuring::associate_internal_references($parser);
  # every format needs the sectioning structure

  my $structure = Texinfo::Structuring::sectioning_structure($parser, $tree);

  if ($structure
      and !$formats_table{$format}->{'no_warn_non_empty_parts'}) {
    Texinfo::Structuring::warn_non_empty_parts($parser);
  }

  if ($tree_transformations{'complete_tree_nodes_menus'}) {
    Texinfo::Transformations::complete_tree_nodes_menus($parser, $tree);
  }

  if ($tree_transformations{'regenerate_master_menu'}) {
    Texinfo::Transformations::regenerate_master_menu($parser);
  }

  # this can be done for every format, since information is already gathered
  my $floats = $parser->floats_information();

  my $top_node;
  if ($formats_table{$format}->{'nodes_tree'}) {
    $top_node = Texinfo::Structuring::nodes_tree($parser);
  }
  if ($formats_table{$format}->{'floats'}) {
    Texinfo::Structuring::number_floats($floats);
  }

  $error_count = handle_errors($parser, $error_count, \@opened_files);

  if ($format eq 'structure') {
    next;
  }

  if ($file_number != 0) {
    delete $cmdline_options->{'OUTFILE'} if exists($cmdline_options->{'OUTFILE'});
    delete $cmdline_options->{'OUT'} if exists($cmdline_options->{'OUT'});
    delete $cmdline_options->{'PREFIX'} if exists($cmdline_options->{'PREFIX'});
    delete $cmdline_options->{'SUBDIR'} 
      if (exists($cmdline_options->{'SUBDIR'}) and get_conf('SPLIT'));
  }
  my $converter_options = { %$converter_default_options, 
                            %$cmdline_options,
                            %$Texinfo::Config::options };

  $converter_options->{'parser'} = $parser;
  $converter_options->{'output_format'} = $format;
  $converter_options->{'htmlxref_files'} = \@texinfo_htmlxref_files;
  my $converter = &{$formats_table{$format}->{'converter'}}($converter_options);
  $converter->output($tree);
  push @opened_files, $converter->converter_opened_files();
  handle_errors($converter, $error_count, \@opened_files);
  my $converter_unclosed_files = $converter->converter_unclosed_files();
  if ($converter_unclosed_files) {
    foreach my $unclosed_file (keys(%$converter_unclosed_files)) {
      if ($unclosed_file eq '-') {
        $unclosed_files{$unclosed_file} 
          = $converter_unclosed_files->{$unclosed_file};
      } else {
        if (!close($converter_unclosed_files->{$unclosed_file})) {
          warn(sprintf(__("%s: error on closing %s: %s\n"), 
                           $real_command_name, $unclosed_file, $!));
          $error_count++;
          _exit($error_count, \@opened_files);
        }
      }
    }
  }
  
  if (defined(get_conf('INTERNAL_LINKS')) and $file_number == 0
      and $formats_table{$format}->{'internal_links'}) {
    my $internal_links_text 
      = $converter->output_internal_links();
    # always create a file, even if empty.
    $internal_links_text = '' if (!defined($internal_links_text));
    my $internal_links_file = get_conf('INTERNAL_LINKS');
    my $internal_links_fh = Texinfo::Common::open_out($converter, 
                                             $internal_links_file);
    my $error_internal_links_file;
    if (defined ($internal_links_fh)) {
      print $internal_links_fh $internal_links_text;
      
      if (!close ($internal_links_fh)) {
        warn(sprintf(__("%s: error on closing internal links file %s: %s\n"), 
                      $real_command_name, $internal_links_file, $!));
        $error_internal_links_file = 1;
      }
      $converter->register_close_file($internal_links_file);
    } else {
      warn(sprintf(__("%s: could not open %s for writing: %s\n"), 
                      $real_command_name, $internal_links_file, $!));
      $error_internal_links_file = 1;
    }
    if ($error_internal_links_file) {
      $error_count++;
      _exit($error_count, \@opened_files);
    }
  }
  if (defined(get_conf('SORT_ELEMENT_COUNT')) and $file_number == 0) {
    my $converter_element_count_file 
      = Texinfo::Convert::TextContent->converter($converter_options);
    my $use_sections = (! $formats_table{$format}->{'nodes_tree'}
                        or (defined($converter->get_conf('USE_NODES'))
                            and !$converter->get_conf('USE_NODES')));
    my ($sorted_name_counts_array, $sort_element_count_text)
        = Texinfo::Convert::Converter::sort_element_counts(
               $converter_element_count_file, $tree, $use_sections,
                             get_conf('SORT_ELEMENT_COUNT_WORDS'));

    my $sort_element_count_file = get_conf('SORT_ELEMENT_COUNT'); 
    my $sort_element_count_fh = Texinfo::Common::open_out($converter, 
                                             $sort_element_count_file);
    my $error_sort_element_count_file;
    if (defined ($sort_element_count_fh)) {
      print $sort_element_count_fh $sort_element_count_text;
      
      if (!close ($sort_element_count_fh)) {
        warn(sprintf(__("%s: error on closing internal links file %s: %s\n"), 
                      $real_command_name, $sort_element_count_file, $!));
        $error_sort_element_count_file = 1;
      }
      $converter->register_close_file($sort_element_count_file);
    } else {
      warn(sprintf(__("%s: could not open %s for writing: %s\n"), 
                    $real_command_name, $sort_element_count_file, $!));
      $error_sort_element_count_file = 1;
    }
    if ($error_sort_element_count_file) {
      $error_count++;
      _exit($error_count, \@opened_files);
    }
  }
}

foreach my $unclosed_file (keys(%unclosed_files)) {
  if (!close($unclosed_files{$unclosed_file})) {
    warn(sprintf(__("%s: error on closing %s: %s\n"), 
                     $real_command_name, $unclosed_file, $!));
    $error_count++;
    _exit($error_count, \@opened_files);
  }
}

if ($call_texi2dvi) {
  if (get_conf('DEBUG') or get_conf('VERBOSE')) {
    print STDERR "EXEC ".join('|', (get_conf('TEXI2DVI'), @texi2dvi_args, @ARGV)) 
       ."\n";
  }
  exec { get_conf('TEXI2DVI') } (get_conf('TEXI2DVI'), @texi2dvi_args, @ARGV);
}

1;
