use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'quotation_and_author'} = {
  'contents' => [
    {
      'cmdname' => 'quotation',
      'contents' => [
        {
          'parent' => {},
          'text' => ' 
',
          'type' => 'empty_line_after_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_spaces_after_command'
                },
                {
                  'parent' => {},
                  'text' => 'Some One'
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'spaces_at_end'
                }
              ],
              'parent' => {},
              'type' => 'misc_line_arg'
            }
          ],
          'cmdname' => 'author',
          'extra' => {
            'misc_content' => [
              {}
            ],
            'quotation' => {},
            'spaces_after_command' => {}
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 2,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'A quot---ation
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_spaces_after_command'
                },
                {
                  'parent' => {},
                  'text' => 'quotation'
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'spaces_at_end'
                }
              ],
              'parent' => {},
              'type' => 'misc_line_arg'
            }
          ],
          'cmdname' => 'end',
          'extra' => {
            'command_argument' => 'quotation',
            'spaces_after_command' => {},
            'text_arg' => 'quotation'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 4,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'authors' => [
          {}
        ],
        'end_command' => {},
        'spaces_after_command' => {}
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'parent' => {},
      'text' => '
',
      'type' => 'empty_line'
    },
    {
      'cmdname' => 'smallquotation',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line_after_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_spaces_after_command'
                },
                {
                  'parent' => {},
                  'text' => 'An Author Name'
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'spaces_at_end'
                }
              ],
              'parent' => {},
              'type' => 'misc_line_arg'
            }
          ],
          'cmdname' => 'author',
          'extra' => {
            'misc_content' => [
              {}
            ],
            'quotation' => {},
            'spaces_after_command' => {}
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 7,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'in small---quotation.
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_spaces_after_command'
                },
                {
                  'parent' => {},
                  'text' => 'smallquotation'
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'spaces_at_end'
                }
              ],
              'parent' => {},
              'type' => 'misc_line_arg'
            }
          ],
          'cmdname' => 'end',
          'extra' => {
            'command_argument' => 'smallquotation',
            'spaces_after_command' => {},
            'text_arg' => 'smallquotation'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 9,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'authors' => [
          {}
        ],
        'end_command' => {},
        'spaces_after_command' => {}
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 6,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'parent' => {},
      'text' => '
',
      'type' => 'empty_line'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => ' ',
              'type' => 'empty_spaces_after_command'
            },
            {
              'parent' => {},
              'text' => 'Note'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'space_at_end_block_command'
            }
          ],
          'parent' => {},
          'type' => 'block_line_arg'
        }
      ],
      'cmdname' => 'quotation',
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_spaces_after_command'
                },
                {
                  'parent' => {},
                  'text' => 'Some Notifier'
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'spaces_at_end'
                }
              ],
              'parent' => {},
              'type' => 'misc_line_arg'
            }
          ],
          'cmdname' => 'author',
          'extra' => {
            'misc_content' => [
              {}
            ],
            'quotation' => {},
            'spaces_after_command' => {}
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 12,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'A Note
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_spaces_after_command'
                },
                {
                  'parent' => {},
                  'text' => 'quotation'
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'spaces_at_end'
                }
              ],
              'parent' => {},
              'type' => 'misc_line_arg'
            }
          ],
          'cmdname' => 'end',
          'extra' => {
            'command_argument' => 'quotation',
            'spaces_after_command' => {},
            'text_arg' => 'quotation'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 14,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'authors' => [
          {}
        ],
        'block_command_line_contents' => [
          [
            {}
          ]
        ],
        'end_command' => {},
        'spaces_after_command' => {}
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 11,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'text_root'
};
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[1];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[1]{'extra'}{'misc_content'}[0] = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[1]{'extra'}{'quotation'} = $result_trees{'quotation_and_author'}{'contents'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[1]{'extra'}{'spaces_after_command'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[2];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'extra'}{'spaces_after_command'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'extra'}{'authors'}[0] = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[1];
$result_trees{'quotation_and_author'}{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[3];
$result_trees{'quotation_and_author'}{'contents'}[0]{'extra'}{'spaces_after_command'} = $result_trees{'quotation_and_author'}{'contents'}[0]{'contents'}[0];
$result_trees{'quotation_and_author'}{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'};
$result_trees{'quotation_and_author'}{'contents'}[1]{'parent'} = $result_trees{'quotation_and_author'};
$result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[2];
$result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[1];
$result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[1]{'extra'}{'misc_content'}[0] = $result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[1]{'extra'}{'quotation'} = $result_trees{'quotation_and_author'}{'contents'}[2];
$result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[1]{'extra'}{'spaces_after_command'} = $result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[2];
$result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[2];
$result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[2];
$result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[3];
$result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[3]{'extra'}{'spaces_after_command'} = $result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[2];
$result_trees{'quotation_and_author'}{'contents'}[2]{'extra'}{'authors'}[0] = $result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[1];
$result_trees{'quotation_and_author'}{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[3];
$result_trees{'quotation_and_author'}{'contents'}[2]{'extra'}{'spaces_after_command'} = $result_trees{'quotation_and_author'}{'contents'}[2]{'contents'}[0];
$result_trees{'quotation_and_author'}{'contents'}[2]{'parent'} = $result_trees{'quotation_and_author'};
$result_trees{'quotation_and_author'}{'contents'}[3]{'parent'} = $result_trees{'quotation_and_author'};
$result_trees{'quotation_and_author'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[4]{'args'}[0];
$result_trees{'quotation_and_author'}{'contents'}[4]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[4]{'args'}[0];
$result_trees{'quotation_and_author'}{'contents'}[4]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[4]{'args'}[0];
$result_trees{'quotation_and_author'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[4];
$result_trees{'quotation_and_author'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'quotation_and_author'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'quotation_and_author'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'quotation_and_author'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[4]{'contents'}[0];
$result_trees{'quotation_and_author'}{'contents'}[4]{'contents'}[0]{'extra'}{'misc_content'}[0] = $result_trees{'quotation_and_author'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'quotation_and_author'}{'contents'}[4]{'contents'}[0]{'extra'}{'quotation'} = $result_trees{'quotation_and_author'}{'contents'}[4];
$result_trees{'quotation_and_author'}{'contents'}[4]{'contents'}[0]{'extra'}{'spaces_after_command'} = $result_trees{'quotation_and_author'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'quotation_and_author'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[4];
$result_trees{'quotation_and_author'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[4]{'contents'}[1];
$result_trees{'quotation_and_author'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[4];
$result_trees{'quotation_and_author'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'quotation_and_author'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'quotation_and_author'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'quotation_and_author'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[4]{'contents'}[2];
$result_trees{'quotation_and_author'}{'contents'}[4]{'contents'}[2]{'extra'}{'spaces_after_command'} = $result_trees{'quotation_and_author'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'quotation_and_author'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'quotation_and_author'}{'contents'}[4];
$result_trees{'quotation_and_author'}{'contents'}[4]{'extra'}{'authors'}[0] = $result_trees{'quotation_and_author'}{'contents'}[4]{'contents'}[0];
$result_trees{'quotation_and_author'}{'contents'}[4]{'extra'}{'block_command_line_contents'}[0][0] = $result_trees{'quotation_and_author'}{'contents'}[4]{'args'}[0]{'contents'}[1];
$result_trees{'quotation_and_author'}{'contents'}[4]{'extra'}{'end_command'} = $result_trees{'quotation_and_author'}{'contents'}[4]{'contents'}[2];
$result_trees{'quotation_and_author'}{'contents'}[4]{'extra'}{'spaces_after_command'} = $result_trees{'quotation_and_author'}{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'quotation_and_author'}{'contents'}[4]{'parent'} = $result_trees{'quotation_and_author'};

$result_texis{'quotation_and_author'} = '@quotation 
@author Some One
A quot---ation
@end quotation

@smallquotation
@author An Author Name
in small---quotation.
@end smallquotation

@quotation Note
@author Some Notifier
A Note
@end quotation
';


$result_texts{'quotation_and_author'} = 'A quot--ation

in small--quotation.

Note
A Note
';

$result_errors{'quotation_and_author'} = [];



$result_converted{'plaintext'}->{'quotation_and_author'} = '     A quot--ation
                             -- _Some One_

     in small--quotation.
                          -- _An Author Name_

     Note: A Note
                          -- _Some Notifier_
';


$result_converted{'html_text'}->{'quotation_and_author'} = '<blockquote>
<p>A quot&mdash;ation
</p></blockquote>
<div align="center">&mdash; <em>Some One</em>
</div>
<blockquote class="smallquotation">
<p>in small&mdash;quotation.
</p></blockquote>
<div align="center">&mdash; <em>An Author Name</em>
</div>
<blockquote>
<p><b>Note:</b> A Note
</p></blockquote>
<div align="center">&mdash; <em>Some Notifier</em>
</div>';


$result_converted{'xml'}->{'quotation_and_author'} = '<quotation endspaces=" "> 
<author spaces=" ">Some One</author>
<para>A quot&textmdash;ation
</para></quotation>

<smallquotation endspaces=" ">
<author spaces=" ">An Author Name</author>
<para>in small&textmdash;quotation.
</para></smallquotation>

<quotation spaces=" " endspaces=" "><quotationtype>Note</quotationtype>
<author spaces=" ">Some Notifier</author>
<para>A Note
</para></quotation>
';


$result_converted{'docbook'}->{'quotation_and_author'} = '<blockquote><attribution>Some One</attribution>
<para>A quot&#8212;ation
</para></blockquote>
<blockquote><attribution>An Author Name</attribution>
<para>in small&#8212;quotation.
</para></blockquote>
<note><attribution>Some Notifier</attribution>
<para>A Note
</para></note>';

1;
