use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats);

$result_trees{'not_closed'} = {
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
                  'parent' => {},
                  'text' => 'truc bidule machin
'
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
                {
                  'text' => 'truc'
                }
              ],
              [
                'spaces',
                {
                  'text' => ' ',
                  'type' => 'spaces'
                }
              ],
              [
                'name',
                {
                  'text' => 'bidule'
                }
              ],
              [
                'spaces',
                {
                  'text' => ' ',
                  'type' => 'spaces'
                }
              ],
              [
                'arg',
                {
                  'text' => 'machin'
                }
              ]
            ],
            'def_command' => 'deffn',
            'index_entry' => {
              'command' => {},
              'content' => [],
              'def' => 1,
              'index_at_command' => 'deffn',
              'index_name' => 'fn',
              'index_prefix' => 'f'
            }
          },
          'parent' => {},
          'type' => 'def_line'
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
                  'text' => 'truc chose args
'
                }
              ],
              'parent' => {},
              'type' => 'misc_line_arg'
            }
          ],
          'cmdname' => 'deffnx',
          'extra' => {
            'def_args' => [
              [
                'category',
                {
                  'text' => 'truc'
                }
              ],
              [
                'spaces',
                {
                  'text' => ' ',
                  'type' => 'spaces'
                }
              ],
              [
                'name',
                {
                  'text' => 'chose'
                }
              ],
              [
                'spaces',
                {
                  'text' => ' ',
                  'type' => 'spaces'
                }
              ],
              [
                'arg',
                {
                  'text' => 'args'
                }
              ]
            ],
            'def_command' => 'deffn',
            'index_entry' => {
              'command' => {},
              'content' => [],
              'def' => 1,
              'index_at_command' => 'deffn',
              'index_name' => 'fn',
              'index_prefix' => 'f'
            }
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 2,
            'macro' => ''
          },
          'parent' => {},
          'type' => 'def_line'
        },
        {
          'cmdname' => 'defvar',
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
                      'text' => 'type1 var bidule
'
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
                    {
                      'text' => 'Variable'
                    }
                  ],
                  [
                    'spaces',
                    {
                      'text' => ' ',
                      'type' => 'spaces'
                    }
                  ],
                  [
                    'name',
                    {
                      'text' => 'type1'
                    }
                  ]
                ],
                'def_command' => 'defvar',
                'index_entry' => {
                  'command' => {},
                  'content' => [],
                  'def' => 1,
                  'index_at_command' => 'defvar',
                  'index_name' => 'vr',
                  'index_prefix' => 'v'
                }
              },
              'parent' => {},
              'type' => 'def_line'
            }
          ],
          'parent' => {}
        }
      ],
      'parent' => {}
    }
  ],
  'type' => 'text_root'
};
$result_trees{'not_closed'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'not_closed'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'not_closed'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'not_closed'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'not_closed'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'not_closed'}{'contents'}[0]{'contents'}[0];
$result_trees{'not_closed'}{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'not_closed'}{'contents'}[0]{'contents'}[0];
$result_trees{'not_closed'}{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'not_closed'}{'contents'}[0]{'contents'}[0]{'extra'}{'def_args'};
$result_trees{'not_closed'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'not_closed'}{'contents'}[0];
$result_trees{'not_closed'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'not_closed'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'not_closed'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'not_closed'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'not_closed'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'not_closed'}{'contents'}[0]{'contents'}[1];
$result_trees{'not_closed'}{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'not_closed'}{'contents'}[0]{'contents'}[1];
$result_trees{'not_closed'}{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'not_closed'}{'contents'}[0]{'contents'}[1]{'extra'}{'def_args'};
$result_trees{'not_closed'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'not_closed'}{'contents'}[0];
$result_trees{'not_closed'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'not_closed'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'not_closed'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'not_closed'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'not_closed'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'not_closed'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'not_closed'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'not_closed'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'not_closed'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'not_closed'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'def_args'};
$result_trees{'not_closed'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'not_closed'}{'contents'}[0]{'contents'}[2];
$result_trees{'not_closed'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'not_closed'}{'contents'}[0];
$result_trees{'not_closed'}{'contents'}[0]{'parent'} = $result_trees{'not_closed'};

$result_texis{'not_closed'} = '@deffn truc bidule machin
@deffnx truc chose args
@defvar type1 var bidule
@end defvar@end deffn';


$result_texts{'not_closed'} = 'truc bidule machin
truc chose args
type1 var bidule
';

$result_errors{'not_closed'} = [
  {
    'error_line' => ':3: No matching `@end defvar\'
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => 'No matching `@end defvar\'',
    'type' => 'error'
  },
  {
    'error_line' => ':3: No matching `@end deffn\'
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => 'No matching `@end deffn\'',
    'type' => 'error'
  }
];


1;
