use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'listoffloats_with_commands'} = {
  'contents' => [
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'th'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'e'
                    }
                  ],
                  'parent' => {},
                  'type' => 'following_arg'
                }
              ],
              'cmdname' => '\'',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => 'or'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'e'
                    }
                  ],
                  'parent' => {},
                  'type' => 'following_arg'
                }
              ],
              'cmdname' => '`',
              'contents' => [],
              'line_nr' => {},
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => 'me'
            }
          ],
          'extra' => {
            'spaces_after_argument' => '
'
          },
          'parent' => {},
          'type' => 'misc_line_arg'
        }
      ],
      'cmdname' => 'listoffloats',
      'extra' => {
        'spaces_before_argument' => ' ',
        'type' => {
          'content' => [
            {},
            {},
            {},
            {},
            {}
          ],
          'normalized' => 'th@\'eor@`eme'
        }
      },
      'line_nr' => {},
      'parent' => {}
    }
  ],
  'type' => 'text_root'
};
$result_trees{'listoffloats_with_commands'}{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'listoffloats_with_commands'}{'contents'}[0]{'args'}[0];
$result_trees{'listoffloats_with_commands'}{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'listoffloats_with_commands'}{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'listoffloats_with_commands'}{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'listoffloats_with_commands'}{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'listoffloats_with_commands'}{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'listoffloats_with_commands'}{'contents'}[0]{'args'}[0];
$result_trees{'listoffloats_with_commands'}{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'listoffloats_with_commands'}{'contents'}[0]{'args'}[0];
$result_trees{'listoffloats_with_commands'}{'contents'}[0]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'listoffloats_with_commands'}{'contents'}[0]{'args'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'listoffloats_with_commands'}{'contents'}[0]{'args'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'listoffloats_with_commands'}{'contents'}[0]{'args'}[0]{'contents'}[3];
$result_trees{'listoffloats_with_commands'}{'contents'}[0]{'args'}[0]{'contents'}[3]{'line_nr'} = $result_trees{'listoffloats_with_commands'}{'contents'}[0]{'args'}[0]{'contents'}[1]{'line_nr'};
$result_trees{'listoffloats_with_commands'}{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'listoffloats_with_commands'}{'contents'}[0]{'args'}[0];
$result_trees{'listoffloats_with_commands'}{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'listoffloats_with_commands'}{'contents'}[0]{'args'}[0];
$result_trees{'listoffloats_with_commands'}{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'listoffloats_with_commands'}{'contents'}[0];
$result_trees{'listoffloats_with_commands'}{'contents'}[0]{'extra'}{'type'}{'content'}[0] = $result_trees{'listoffloats_with_commands'}{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'listoffloats_with_commands'}{'contents'}[0]{'extra'}{'type'}{'content'}[1] = $result_trees{'listoffloats_with_commands'}{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'listoffloats_with_commands'}{'contents'}[0]{'extra'}{'type'}{'content'}[2] = $result_trees{'listoffloats_with_commands'}{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'listoffloats_with_commands'}{'contents'}[0]{'extra'}{'type'}{'content'}[3] = $result_trees{'listoffloats_with_commands'}{'contents'}[0]{'args'}[0]{'contents'}[3];
$result_trees{'listoffloats_with_commands'}{'contents'}[0]{'extra'}{'type'}{'content'}[4] = $result_trees{'listoffloats_with_commands'}{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'listoffloats_with_commands'}{'contents'}[0]{'line_nr'} = $result_trees{'listoffloats_with_commands'}{'contents'}[0]{'args'}[0]{'contents'}[1]{'line_nr'};
$result_trees{'listoffloats_with_commands'}{'contents'}[0]{'parent'} = $result_trees{'listoffloats_with_commands'};

$result_texis{'listoffloats_with_commands'} = '@listoffloats th@\'eor@`eme
';


$result_texts{'listoffloats_with_commands'} = '';

$result_errors{'listoffloats_with_commands'} = [];



$result_converted{'plaintext'}->{'listoffloats_with_commands'} = '';


$result_converted{'html'}->{'listoffloats_with_commands'} = '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<style type="text/css">
<!--
a.summary-letter {text-decoration: none}
blockquote.indentedblock {margin-right: 0em}
blockquote.smallindentedblock {margin-right: 0em; font-size: smaller}
blockquote.smallquotation {font-size: smaller}
div.display {margin-left: 3.2em}
div.example {margin-left: 3.2em}
div.lisp {margin-left: 3.2em}
div.smalldisplay {margin-left: 3.2em}
div.smallexample {margin-left: 3.2em}
div.smalllisp {margin-left: 3.2em}
kbd {font-style: oblique}
pre.display {font-family: inherit}
pre.format {font-family: inherit}
pre.menu-comment {font-family: serif}
pre.menu-preformatted {font-family: serif}
pre.smalldisplay {font-family: inherit; font-size: smaller}
pre.smallexample {font-size: smaller}
pre.smallformat {font-family: inherit; font-size: smaller}
pre.smalllisp {font-size: smaller}
span.nolinebreak {white-space: nowrap}
span.roman {font-family: initial; font-weight: normal}
span.sansserif {font-family: sans-serif; font-weight: normal}
ul.no-bullet {list-style: none}
-->
</style>


</head>

<body lang="en">



</body>
</html>
';

$result_converted_errors{'html'}->{'listoffloats_with_commands'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
