use vars qw(%result_texis %result_texts %result_trees %result_errors %results_indices);

$result_trees{'defx_after_paragraph_end'} = {
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
                  'text' => 'fset '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'i'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'var',
                  'contents' => [],
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' a g
'
                }
              ],
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'parent' => {},
          'special' => {
            'def_args' => [
              [
                'category',
                {
                  'text' => 'fset'
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
                {}
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
                  'text' => 'a'
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
                  'text' => 'g'
                }
              ]
            ],
            'def_command' => 'deffn'
          },
          'type' => 'def_line'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Text in paragraph.
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
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
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'truc'
                    }
                  ],
                  'parent' => {},
                  'type' => 'bracketed'
                },
                {
                  'parent' => {},
                  'text' => ' bidulr machin...
'
                }
              ],
              'parent' => {},
              'type' => 'misc_line_arg'
            }
          ],
          'cmdname' => 'deffnx',
          'parent' => {},
          'special' => {
            'def_args' => [
              [
                'category',
                {}
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
                  'text' => 'bidulr'
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
                  'text' => 'machin...'
                }
              ]
            ],
            'def_command' => 'deffn'
          },
          'type' => 'def_line'
        }
      ],
      'parent' => {}
    },
    {
      'parent' => {},
      'text' => '',
      'type' => 'empty_line_after_command'
    }
  ],
  'type' => 'text_root'
};
$result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[0];
$result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'defx_after_paragraph_end'}{'contents'}[0];
$result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[0]{'special'}{'def_args'}[2][1] = $result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[1];
$result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'defx_after_paragraph_end'}{'contents'}[0];
$result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'defx_after_paragraph_end'}{'contents'}[0];
$result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[1];
$result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[3];
$result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'defx_after_paragraph_end'}{'contents'}[0];
$result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[3]{'special'}{'def_args'}[0][1] = $result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[1];
$result_trees{'defx_after_paragraph_end'}{'contents'}[0]{'parent'} = $result_trees{'defx_after_paragraph_end'};
$result_trees{'defx_after_paragraph_end'}{'contents'}[1]{'parent'} = $result_trees{'defx_after_paragraph_end'};

$result_texis{'defx_after_paragraph_end'} = '@deffn fset @var{i} a g
Text in paragraph.

@deffnx {truc} bidulr machin...
@end deffn';


$result_texts{'defx_after_paragraph_end'} = 'fset i a g
Text in paragraph.

truc bidulr machin...
';

$result_errors{'defx_after_paragraph_end'} = [
  {
    'error_line' => ':4: Must be after `@deffn\' to use `@deffnx\'
',
    'file_name' => '',
    'line_nr' => 4,
    'macro' => '',
    'text' => 'Must be after `@deffn\' to use `@deffnx\'',
    'type' => 'error'
  }
];


$result_indices{'defx_after_paragraph_end'} = undef;


1;
