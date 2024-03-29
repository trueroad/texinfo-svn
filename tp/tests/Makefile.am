# $Id$
# Makefile.am for texinfo/tp/tests.
# Copyright 2012, 2013, 2014, 2015, 2016, 2017, 2018 Free Software 
# Foundation, Inc.
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

# autogenerated list of scripts that only run one test, and lists of 
# list-of-tests files specifying the tests to run.
include $(srcdir)/Makefile.onetst

$(srcdir)/Makefile.onetst: \
  ../maintain/regenerate_cmd_tests.sh $(test_driving_files_generated_list)
	cd $(srcdir) \
	&& $(SHELL) ../maintain/regenerate_cmd_tests.sh Makefile.onetst . \
	  -base '$(base_tests)' \
	  -tex_html '$(tex_html_tests)'

base_tests = formatting sectioning indices nested_formats contents layout
tex_html_tests = tex_html

DIST_SUBDIRS = many_input_files $(base_tests) $(tex_html_tests)
SUBDIRS = . many_input_files

copy-tests: copy-base
	cd many_input_files && $(MAKE) copy-tests

copy-base:
	$(srcdir)/parser_tests.sh -copy $(base_tests)

copy-tex-html:
	$(srcdir)/parser_tests.sh -copy $(tex_html_tests)
	cd many_input_files && $(MAKE) copy-tex-html

clean-tests:
	$(srcdir)/parser_tests.sh -clean $(base_tests) $(tex_html_tests)

other_tests = \
	t/stdout.sh \
	t/stdout_split.sh

TESTS = $(one_test_files_generated_list) $(other_tests)

AM_TESTS_ENVIRONMENT = srcdir="$(srcdir)"; export srcdir; top_srcdir="$(top_srcdir)"; export top_srcdir; builddir="$(builddir)"; export buildir; top_builddir="$(top_builddir)"; export top_builddir;

all-checks all-check: all
	$(MAKE) $(AM_MAKEFLAGS) check ALL_TESTS=yes

tex-html-checks tex-html-check: all
	$(MAKE) $(AM_MAKEFLAGS) check TEX_HTML_TESTS=yes

# This is done in this directory to be sure that the files are there
# when check is done in this directory.
# Some files are in 2 directories in order to get the same result
# in both test run locations.
all-local: equivalent_nodes-noderename.cnf sectioning/equivalent_nodes-noderename.cnf

sectioning/equivalent_nodes-noderename.cnf: sectioning/renamednodes.cnf-ref
	${INSTALL_DATA} $(srcdir)/sectioning/renamednodes.cnf-ref $@

equivalent_nodes-noderename.cnf: sectioning/renamednodes.cnf-ref
	${INSTALL_DATA} $(srcdir)/sectioning/renamednodes.cnf-ref $@

EXTRA_DIST = run_parser_all.sh parser_tests.sh \
 $(one_test_files_generated_list) coverage_macro.texi $(other_tests) reference

DISTCLEANFILES = unknown_nodes_renamed-noderename.cnf \
 equivalent_nodes-noderename.cnf

dist-hook:
	rm -rf `find $(distdir)/reference -name .svn`
