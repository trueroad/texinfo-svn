use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'wrong_braces_with_end_of_lines'} = {
  'contents' => [
    {
      'cmdname' => 'deffn',
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
                  'text' => 'category'
                },
                {
                  'text' => ' ',
                  'type' => 'spaces'
                },
                {
                  'text' => 'name'
                },
                {
                  'text' => ' ',
                  'type' => 'spaces'
                },
                {
                  'text' => 'args'
                },
                {
                  'text' => ' ',
                  'type' => 'spaces'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'more args'
                    },
                    {
                      'parent' => {},
                      'text' => '
',
                      'type' => 'spaces_at_end'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => '   '
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  },
                  'parent' => {},
                  'type' => 'bracketed_def_content'
                }
              ],
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'extra' => {
            'def_args' => [
              [
                'category',
                {}
              ],
              [
                'spaces',
                {}
              ],
              [
                'name',
                {}
              ],
              [
                'spaces',
                {}
              ],
              [
                'arg',
                {}
              ],
              [
                'spaces',
                {}
              ],
              [
                'arg',
                {}
              ]
            ],
            'def_command' => 'deffn',
            'def_parsed_hash' => {
              'category' => {},
              'name' => {}
            },
            'index_entry' => {
              'command' => {},
              'content' => [
                {}
              ],
              'content_normalized' => [
                {}
              ],
              'in_code' => 1,
              'index_at_command' => 'deffn',
              'index_name' => 'fn',
              'index_type_command' => 'deffn',
              'key' => 'name',
              'number' => 1
            },
            'original_def_cmdname' => 'deffn'
          },
          'line_nr' => {},
          'parent' => {},
          'type' => 'def_line'
        },
        {
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'deffn with '
                },
                {
                  'cmdname' => '{',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => '
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            }
          ],
          'parent' => {},
          'type' => 'def_item'
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
                  'text' => 'deffn'
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
            'command_argument' => 'deffn',
            'spaces_after_command' => {},
            'text_arg' => 'deffn'
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
        'end_command' => {},
        'spaces_after_command' => {}
      },
      'line_nr' => {},
      'parent' => {}
    },
    {
      'parent' => {},
      'text' => '
',
      'type' => 'empty_line'
    },
    {
      'cmdname' => 'deffn',
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
                  'text' => 'category'
                },
                {
                  'text' => ' ',
                  'type' => 'spaces'
                },
                {
                  'text' => 'name'
                },
                {
                  'text' => ' ',
                  'type' => 'spaces'
                },
                {
                  'text' => 'args'
                },
                {
                  'text' => '    ',
                  'type' => 'spaces'
                },
                {
                  'text' => 'more'
                },
                {
                  'text' => ' ',
                  'type' => 'spaces'
                },
                {
                  'text' => 'args'
                },
                {
                  'text' => '
',
                  'type' => 'spaces_at_end'
                }
              ],
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'extra' => {
            'def_args' => [
              [
                'category',
                {}
              ],
              [
                'spaces',
                {}
              ],
              [
                'name',
                {}
              ],
              [
                'spaces',
                {}
              ],
              [
                'arg',
                {}
              ],
              [
                'spaces',
                {}
              ],
              [
                'arg',
                {}
              ],
              [
                'spaces',
                {}
              ],
              [
                'arg',
                {}
              ],
              [
                'spaces',
                {}
              ]
            ],
            'def_command' => 'deffn',
            'def_parsed_hash' => {
              'category' => {},
              'name' => {}
            },
            'index_entry' => {
              'command' => {},
              'content' => [
                {}
              ],
              'content_normalized' => [
                {}
              ],
              'in_code' => 1,
              'index_at_command' => 'deffn',
              'index_name' => 'fn',
              'index_type_command' => 'deffn',
              'key' => 'name',
              'number' => 2
            },
            'original_def_cmdname' => 'deffn'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 6,
            'macro' => ''
          },
          'parent' => {},
          'type' => 'def_line'
        },
        {
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'deffn with '
                },
                {
                  'cmdname' => '}',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => '
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            }
          ],
          'parent' => {},
          'type' => 'def_item'
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
                  'text' => 'deffn'
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
            'command_argument' => 'deffn',
            'spaces_after_command' => {},
            'text_arg' => 'deffn'
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
        'end_command' => {},
        'spaces_after_command' => {}
      },
      'line_nr' => {},
      'parent' => {}
    }
  ],
  'type' => 'text_root'
};
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'extra'}{'def_args'}[0][1] = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'extra'}{'def_args'}[1][1] = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'extra'}{'def_args'}[2][1] = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[3];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'extra'}{'def_args'}[3][1] = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'extra'}{'def_args'}[4][1] = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[5];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'extra'}{'def_args'}[5][1] = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'extra'}{'def_args'}[6][1] = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[3];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[3];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[3];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'line_nr'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7]{'line_nr'};
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[1];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'extra'}{'spaces_after_command'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'extra'}{'spaces_after_command'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'line_nr'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7]{'line_nr'};
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'};
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[1]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'};
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'extra'}{'def_args'}[0][1] = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'extra'}{'def_args'}[1][1] = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'extra'}{'def_args'}[2][1] = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[3];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'extra'}{'def_args'}[3][1] = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'extra'}{'def_args'}[4][1] = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[5];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'extra'}{'def_args'}[5][1] = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'extra'}{'def_args'}[6][1] = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[7];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'extra'}{'def_args'}[7][1] = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[8];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'extra'}{'def_args'}[8][1] = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[9];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'extra'}{'def_args'}[9][1] = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[10];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[3];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[3];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[3];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[1];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[2];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[2]{'extra'}{'spaces_after_command'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[2];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'extra'}{'spaces_after_command'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'line_nr'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'contents'}[0]{'line_nr'};
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[2]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'};

$result_texis{'wrong_braces_with_end_of_lines'} = '@deffn category name args {   more args
}deffn with @{
@end deffn 

@deffn category name args    more args
deffn with @}
@end deffn 
';


$result_texts{'wrong_braces_with_end_of_lines'} = 'category: name args more args
deffn with {

category: name args    more args
deffn with }
';

$result_errors{'wrong_braces_with_end_of_lines'} = [
  {
    'error_line' => ':1: misplaced {
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => ':2: warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => ':6: misplaced }
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => '',
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => ':7: warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 7,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  }
];


1;
