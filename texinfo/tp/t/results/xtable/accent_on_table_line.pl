use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements);

use utf8;

$result_trees{'accent_on_table_line'} = {
  'contents' => [
    {
      'args' => [
        {
          'contents' => [
            {
              'extra' => {
                'command' => {}
              },
              'parent' => {},
              'text' => ' ',
              'type' => 'empty_spaces_after_command'
            },
            {
              'cmdname' => '~',
              'parent' => {},
              'type' => 'command_as_argument'
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
      'cmdname' => 'table',
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'extra' => {
                    'command' => {}
                  },
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_spaces_after_command'
                },
                {
                  'parent' => {},
                  'text' => 'first item'
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
          'cmdname' => 'item',
          'extra' => {
            'misc_content' => [
              {}
            ]
          },
          'parent' => {}
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'extra' => {
                    'command' => {}
                  },
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_spaces_after_command'
                },
                {
                  'parent' => {},
                  'text' => 'no at-command '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'code'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'code',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 3,
                    'macro' => ''
                  },
                  'parent' => {}
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
          'cmdname' => 'item',
          'extra' => {
            'misc_content' => [
              {},
              {}
            ]
          },
          'parent' => {}
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'extra' => {
                    'command' => {}
                  },
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_spaces_after_command'
                },
                {
                  'parent' => {},
                  'text' => 'table'
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
            'command' => {},
            'command_argument' => 'table',
            'text_arg' => 'table'
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
        'block_command_line_contents' => [
          [
            {
              'cmdname' => 'asis',
              'parent' => {},
              'type' => 'command_as_argument'
            }
          ]
        ],
        'command_as_argument' => {},
        'end_command' => {}
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'text_root'
};
$result_trees{'accent_on_table_line'}{'contents'}[0]{'args'}[0]{'contents'}[0]{'extra'}{'command'} = $result_trees{'accent_on_table_line'}{'contents'}[0];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'accent_on_table_line'}{'contents'}[0]{'args'}[0];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'accent_on_table_line'}{'contents'}[0]{'args'}[0];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'accent_on_table_line'}{'contents'}[0]{'args'}[0];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'accent_on_table_line'}{'contents'}[0];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'extra'}{'command'} = $result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[0]{'extra'}{'misc_content'}[0] = $result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'accent_on_table_line'}{'contents'}[0];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'extra'}{'command'} = $result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[1];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[1];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[1]{'extra'}{'misc_content'}[0] = $result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[1]{'extra'}{'misc_content'}[1] = $result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'accent_on_table_line'}{'contents'}[0];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'extra'}{'command'} = $result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[2]{'extra'}{'command'} = $result_trees{'accent_on_table_line'}{'contents'}[0];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'accent_on_table_line'}{'contents'}[0];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'extra'}{'block_command_line_contents'}[0][0]{'parent'} = $result_trees{'accent_on_table_line'}{'contents'}[0];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'extra'}{'command_as_argument'} = $result_trees{'accent_on_table_line'}{'contents'}[0]{'extra'}{'block_command_line_contents'}[0][0];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'accent_on_table_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'accent_on_table_line'}{'contents'}[0]{'parent'} = $result_trees{'accent_on_table_line'};

$result_texis{'accent_on_table_line'} = '@table @~
@item first item
@item no at-command @code{code}
@end table
';


$result_texts{'accent_on_table_line'} = 'first item
no at-command code
';

$result_errors{'accent_on_table_line'} = [
  {
    'error_line' => ':1: warning: Accent command `@~\' not allowed as @table argument
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'Accent command `@~\' not allowed as @table argument',
    'type' => 'warning'
  }
];



$result_converted{'plaintext'}->{'accent_on_table_line'} = 'first item
no at-command `code\'
';

1;
