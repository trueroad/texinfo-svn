use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'empty_deftype'} = {
  'contents' => [
    {
      'cmdname' => 'deftypefun',
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
                  'contents' => [],
                  'extra' => {
                    'def_role' => 'type'
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  },
                  'parent' => {},
                  'type' => 'bracketed_def_content'
                },
                {
                  'extra' => {
                    'def_role' => 'spaces'
                  },
                  'text' => ' ',
                  'type' => 'spaces'
                },
                {
                  'extra' => {
                    'def_role' => 'name'
                  },
                  'text' => 'f'
                },
                {
                  'extra' => {
                    'def_role' => 'spaces'
                  },
                  'text' => ' ',
                  'type' => 'spaces'
                },
                {
                  'extra' => {
                    'def_role' => 'delimiter'
                  },
                  'text' => '(',
                  'type' => 'delimiter'
                },
                {
                  'extra' => {
                    'def_role' => 'typearg'
                  },
                  'text' => 'const'
                },
                {
                  'extra' => {
                    'def_role' => 'spaces'
                  },
                  'text' => ' ',
                  'type' => 'spaces'
                },
                {
                  'extra' => {
                    'def_role' => 'arg'
                  },
                  'text' => 'type&'
                },
                {
                  'extra' => {
                    'def_role' => 'spaces'
                  },
                  'text' => ' ',
                  'type' => 'spaces'
                },
                {
                  'extra' => {
                    'def_role' => 'typearg'
                  },
                  'text' => 'x'
                },
                {
                  'extra' => {
                    'def_role' => 'delimiter'
                  },
                  'text' => ')',
                  'type' => 'delimiter'
                },
                {
                  'extra' => {
                    'def_role' => 'spaces'
                  },
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
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Function'
                    }
                  ],
                  'extra' => {
                    'def_role' => 'category'
                  },
                  'type' => 'bracketed_def_content'
                }
              ],
              [
                'spaces',
                {
                  'extra' => {
                    'def_role' => 'spaces'
                  },
                  'text' => ' ',
                  'type' => 'spaces'
                }
              ],
              [
                'type',
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
                'delimiter',
                {}
              ],
              [
                'typearg',
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
                'typearg',
                {}
              ],
              [
                'delimiter',
                {}
              ],
              [
                'spaces',
                {}
              ]
            ],
            'def_command' => 'deftypefun',
            'def_parsed_hash' => {
              'category' => {},
              'name' => {},
              'type' => {}
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
              'index_at_command' => 'deftypefun',
              'index_name' => 'fn',
              'index_type_command' => 'deftypefun',
              'key' => 'f',
              'number' => 1
            },
            'original_def_cmdname' => 'deftypefun'
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
                  'text' => 'Deftypefun.
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
                  'text' => 'deftypefun'
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
            'command_argument' => 'deftypefun',
            'spaces_after_command' => {},
            'text_arg' => 'deftypefun'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 3,
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
      'cmdname' => 'defun',
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
                  'extra' => {
                    'def_role' => 'name'
                  },
                  'text' => 'f'
                },
                {
                  'extra' => {
                    'def_role' => 'spaces'
                  },
                  'text' => ' ',
                  'type' => 'spaces'
                },
                {
                  'extra' => {
                    'def_role' => 'delimiter'
                  },
                  'text' => '(',
                  'type' => 'delimiter'
                },
                {
                  'extra' => {
                    'def_role' => 'arg'
                  },
                  'text' => 'const'
                },
                {
                  'extra' => {
                    'def_role' => 'spaces'
                  },
                  'text' => ' ',
                  'type' => 'spaces'
                },
                {
                  'extra' => {
                    'def_role' => 'arg'
                  },
                  'text' => 'type&'
                },
                {
                  'extra' => {
                    'def_role' => 'spaces'
                  },
                  'text' => ' ',
                  'type' => 'spaces'
                },
                {
                  'extra' => {
                    'def_role' => 'arg'
                  },
                  'text' => 'x'
                },
                {
                  'extra' => {
                    'def_role' => 'delimiter'
                  },
                  'text' => ')',
                  'type' => 'delimiter'
                },
                {
                  'extra' => {
                    'def_role' => 'spaces'
                  },
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
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Function'
                    }
                  ],
                  'extra' => {
                    'def_role' => 'category'
                  },
                  'type' => 'bracketed_def_content'
                }
              ],
              [
                'spaces',
                {
                  'extra' => {
                    'def_role' => 'spaces'
                  },
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
                {}
              ],
              [
                'delimiter',
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
                'delimiter',
                {}
              ],
              [
                'spaces',
                {}
              ]
            ],
            'def_command' => 'defun',
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
              'index_at_command' => 'defun',
              'index_name' => 'fn',
              'index_type_command' => 'defun',
              'key' => 'f',
              'number' => 2
            },
            'original_def_cmdname' => 'defun'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 5,
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
                  'text' => 'Defun.
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
                  'text' => 'defun'
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
            'command_argument' => 'defun',
            'spaces_after_command' => {},
            'text_arg' => 'defun'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 7,
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
      'cmdname' => 'deftypemethod',
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
                  'extra' => {
                    'def_role' => 'class'
                  },
                  'text' => 'c'
                },
                {
                  'extra' => {
                    'def_role' => 'spaces'
                  },
                  'text' => ' ',
                  'type' => 'spaces'
                },
                {
                  'contents' => [],
                  'extra' => {
                    'def_role' => 'type'
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 9,
                    'macro' => ''
                  },
                  'parent' => {},
                  'type' => 'bracketed_def_content'
                },
                {
                  'extra' => {
                    'def_role' => 'spaces'
                  },
                  'text' => ' ',
                  'type' => 'spaces'
                },
                {
                  'extra' => {
                    'def_role' => 'name'
                  },
                  'text' => 'f'
                },
                {
                  'extra' => {
                    'def_role' => 'spaces'
                  },
                  'text' => ' ',
                  'type' => 'spaces'
                },
                {
                  'extra' => {
                    'def_role' => 'delimiter'
                  },
                  'text' => '(',
                  'type' => 'delimiter'
                },
                {
                  'extra' => {
                    'def_role' => 'typearg'
                  },
                  'text' => 'const'
                },
                {
                  'extra' => {
                    'def_role' => 'spaces'
                  },
                  'text' => ' ',
                  'type' => 'spaces'
                },
                {
                  'extra' => {
                    'def_role' => 'arg'
                  },
                  'text' => 'type&'
                },
                {
                  'extra' => {
                    'def_role' => 'spaces'
                  },
                  'text' => ' ',
                  'type' => 'spaces'
                },
                {
                  'extra' => {
                    'def_role' => 'typearg'
                  },
                  'text' => 'x'
                },
                {
                  'extra' => {
                    'def_role' => 'delimiter'
                  },
                  'text' => ')',
                  'type' => 'delimiter'
                },
                {
                  'extra' => {
                    'def_role' => 'spaces'
                  },
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
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Method'
                    }
                  ],
                  'extra' => {
                    'def_role' => 'category'
                  },
                  'type' => 'bracketed_def_content'
                }
              ],
              [
                'spaces',
                {
                  'extra' => {
                    'def_role' => 'spaces'
                  },
                  'text' => ' ',
                  'type' => 'spaces'
                }
              ],
              [
                'class',
                {}
              ],
              [
                'spaces',
                {}
              ],
              [
                'type',
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
                'delimiter',
                {}
              ],
              [
                'typearg',
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
                'typearg',
                {}
              ],
              [
                'delimiter',
                {}
              ],
              [
                'spaces',
                {}
              ]
            ],
            'def_command' => 'deftypemethod',
            'def_parsed_hash' => {
              'category' => {},
              'class' => {},
              'name' => {},
              'type' => {}
            },
            'index_entry' => {
              'command' => {},
              'content' => [
                {},
                {
                  'text' => ' on '
                },
                {}
              ],
              'content_normalized' => [
                {},
                {
                  'text' => ' on '
                },
                {}
              ],
              'in_code' => 1,
              'index_at_command' => 'deftypemethod',
              'index_name' => 'fn',
              'index_type_command' => 'deftypemethod',
              'key' => 'f on c',
              'number' => 3
            },
            'original_def_cmdname' => 'deftypemethod'
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
                  'text' => 'Deftypemethod.
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
                  'text' => 'deftypemethod'
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
            'command_argument' => 'deftypemethod',
            'spaces_after_command' => {},
            'text_arg' => 'deftypemethod'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 11,
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
      'cmdname' => 'defmethod',
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
                  'extra' => {
                    'def_role' => 'class'
                  },
                  'text' => 'c'
                },
                {
                  'extra' => {
                    'def_role' => 'spaces'
                  },
                  'text' => ' ',
                  'type' => 'spaces'
                },
                {
                  'extra' => {
                    'def_role' => 'name'
                  },
                  'text' => 'f'
                },
                {
                  'extra' => {
                    'def_role' => 'spaces'
                  },
                  'text' => ' ',
                  'type' => 'spaces'
                },
                {
                  'extra' => {
                    'def_role' => 'delimiter'
                  },
                  'text' => '(',
                  'type' => 'delimiter'
                },
                {
                  'extra' => {
                    'def_role' => 'arg'
                  },
                  'text' => 'const'
                },
                {
                  'extra' => {
                    'def_role' => 'spaces'
                  },
                  'text' => ' ',
                  'type' => 'spaces'
                },
                {
                  'extra' => {
                    'def_role' => 'arg'
                  },
                  'text' => 'type&'
                },
                {
                  'extra' => {
                    'def_role' => 'spaces'
                  },
                  'text' => ' ',
                  'type' => 'spaces'
                },
                {
                  'extra' => {
                    'def_role' => 'arg'
                  },
                  'text' => 'x'
                },
                {
                  'extra' => {
                    'def_role' => 'delimiter'
                  },
                  'text' => ')',
                  'type' => 'delimiter'
                },
                {
                  'extra' => {
                    'def_role' => 'spaces'
                  },
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
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Method'
                    }
                  ],
                  'extra' => {
                    'def_role' => 'category'
                  },
                  'type' => 'bracketed_def_content'
                }
              ],
              [
                'spaces',
                {
                  'extra' => {
                    'def_role' => 'spaces'
                  },
                  'text' => ' ',
                  'type' => 'spaces'
                }
              ],
              [
                'class',
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
                'delimiter',
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
                'delimiter',
                {}
              ],
              [
                'spaces',
                {}
              ]
            ],
            'def_command' => 'defmethod',
            'def_parsed_hash' => {
              'category' => {},
              'class' => {},
              'name' => {}
            },
            'index_entry' => {
              'command' => {},
              'content' => [
                {},
                {
                  'text' => ' on '
                },
                {}
              ],
              'content_normalized' => [
                {},
                {
                  'text' => ' on '
                },
                {}
              ],
              'in_code' => 1,
              'index_at_command' => 'defmethod',
              'index_name' => 'fn',
              'index_type_command' => 'defmethod',
              'key' => 'f on c',
              'number' => 4
            },
            'original_def_cmdname' => 'defmethod'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 13,
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
                  'text' => 'Defmethod.
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
                  'text' => 'defmethod'
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
            'command_argument' => 'defmethod',
            'spaces_after_command' => {},
            'text_arg' => 'defmethod'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 15,
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
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'extra'}{'def_args'}[0][1]{'contents'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'extra'}{'def_args'}[0][1];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'extra'}{'def_args'}[2][1] = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'extra'}{'def_args'}[3][1] = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'extra'}{'def_args'}[4][1] = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[3];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'extra'}{'def_args'}[5][1] = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'extra'}{'def_args'}[6][1] = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[5];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'extra'}{'def_args'}[7][1] = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'extra'}{'def_args'}[8][1] = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'extra'}{'def_args'}[9][1] = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[8];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'extra'}{'def_args'}[10][1] = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[9];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'extra'}{'def_args'}[11][1] = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[10];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'extra'}{'def_args'}[12][1] = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[11];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'extra'}{'def_args'}[13][1] = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[12];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'extra'}{'def_args'}[0][1];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[3];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[3];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[3];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'line_nr'} = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'line_nr'};
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[0];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[1];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[0];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[2];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[2]{'extra'}{'spaces_after_command'} = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[0];
$result_trees{'empty_deftype'}{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[2];
$result_trees{'empty_deftype'}{'contents'}[0]{'extra'}{'spaces_after_command'} = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'empty_deftype'}{'contents'}[0]{'line_nr'} = $result_trees{'empty_deftype'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'line_nr'};
$result_trees{'empty_deftype'}{'contents'}[0]{'parent'} = $result_trees{'empty_deftype'};
$result_trees{'empty_deftype'}{'contents'}[1]{'parent'} = $result_trees{'empty_deftype'};
$result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0];
$result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'extra'}{'def_args'}[0][1]{'contents'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'extra'}{'def_args'}[0][1];
$result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'extra'}{'def_args'}[2][1] = $result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'extra'}{'def_args'}[3][1] = $result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'extra'}{'def_args'}[4][1] = $result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[3];
$result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'extra'}{'def_args'}[5][1] = $result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'extra'}{'def_args'}[6][1] = $result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[5];
$result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'extra'}{'def_args'}[7][1] = $result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'extra'}{'def_args'}[8][1] = $result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[7];
$result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'extra'}{'def_args'}[9][1] = $result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[8];
$result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'extra'}{'def_args'}[10][1] = $result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[9];
$result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'extra'}{'def_args'}[11][1] = $result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[10];
$result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'extra'}{'def_args'}[0][1];
$result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0];
$result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[2];
$result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[1];
$result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[2];
$result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[2];
$result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[2]{'extra'}{'spaces_after_command'} = $result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[2];
$result_trees{'empty_deftype'}{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[2];
$result_trees{'empty_deftype'}{'contents'}[2]{'extra'}{'spaces_after_command'} = $result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'empty_deftype'}{'contents'}[2]{'line_nr'} = $result_trees{'empty_deftype'}{'contents'}[2]{'contents'}[0]{'line_nr'};
$result_trees{'empty_deftype'}{'contents'}[2]{'parent'} = $result_trees{'empty_deftype'};
$result_trees{'empty_deftype'}{'contents'}[3]{'parent'} = $result_trees{'empty_deftype'};
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'extra'}{'def_args'}[0][1]{'contents'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'extra'}{'def_args'}[0][1];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'extra'}{'def_args'}[2][1] = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'extra'}{'def_args'}[3][1] = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'extra'}{'def_args'}[4][1] = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[3];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'extra'}{'def_args'}[5][1] = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'extra'}{'def_args'}[6][1] = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[5];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'extra'}{'def_args'}[7][1] = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'extra'}{'def_args'}[8][1] = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[7];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'extra'}{'def_args'}[9][1] = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[8];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'extra'}{'def_args'}[10][1] = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[9];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'extra'}{'def_args'}[11][1] = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[10];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'extra'}{'def_args'}[12][1] = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[11];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'extra'}{'def_args'}[13][1] = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[12];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'extra'}{'def_args'}[14][1] = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[13];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'extra'}{'def_args'}[15][1] = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[14];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'extra'}{'def_args'}[0][1];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[5];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[3];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[5];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[5];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'line_nr'} = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[3]{'line_nr'};
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[4];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[1];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[4];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[2];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[2]{'extra'}{'spaces_after_command'} = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[4];
$result_trees{'empty_deftype'}{'contents'}[4]{'extra'}{'end_command'} = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[2];
$result_trees{'empty_deftype'}{'contents'}[4]{'extra'}{'spaces_after_command'} = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'empty_deftype'}{'contents'}[4]{'line_nr'} = $result_trees{'empty_deftype'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[3]{'line_nr'};
$result_trees{'empty_deftype'}{'contents'}[4]{'parent'} = $result_trees{'empty_deftype'};
$result_trees{'empty_deftype'}{'contents'}[5]{'parent'} = $result_trees{'empty_deftype'};
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'extra'}{'def_args'}[0][1]{'contents'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'extra'}{'def_args'}[0][1];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'extra'}{'def_args'}[2][1] = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'extra'}{'def_args'}[3][1] = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'extra'}{'def_args'}[4][1] = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[3];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'extra'}{'def_args'}[5][1] = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'extra'}{'def_args'}[6][1] = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[5];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'extra'}{'def_args'}[7][1] = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'extra'}{'def_args'}[8][1] = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[7];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'extra'}{'def_args'}[9][1] = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[8];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'extra'}{'def_args'}[10][1] = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[9];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'extra'}{'def_args'}[11][1] = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[10];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'extra'}{'def_args'}[12][1] = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[11];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'extra'}{'def_args'}[13][1] = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[12];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'extra'}{'def_args'}[0][1];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[3];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[3];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[3];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[6];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[1]{'contents'}[0];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[1];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[6];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[2]{'args'}[0];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[2]{'args'}[0];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[2]{'args'}[0];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[2];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[2]{'extra'}{'spaces_after_command'} = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[2]{'parent'} = $result_trees{'empty_deftype'}{'contents'}[6];
$result_trees{'empty_deftype'}{'contents'}[6]{'extra'}{'end_command'} = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[2];
$result_trees{'empty_deftype'}{'contents'}[6]{'extra'}{'spaces_after_command'} = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'empty_deftype'}{'contents'}[6]{'line_nr'} = $result_trees{'empty_deftype'}{'contents'}[6]{'contents'}[0]{'line_nr'};
$result_trees{'empty_deftype'}{'contents'}[6]{'parent'} = $result_trees{'empty_deftype'};

$result_texis{'empty_deftype'} = '@deftypefun {} f (const type& x)
Deftypefun.
@end deftypefun

@defun f (const type& x)
Defun.
@end defun

@deftypemethod c {} f (const type& x)
Deftypemethod.
@end deftypemethod

@defmethod c f (const type& x)
Defmethod.
@end defmethod
';


$result_texts{'empty_deftype'} = 'Function:  f (const type& x)
Deftypefun.

Function: f (const type& x)
Defun.

Method on c:  f (const type& x)
Deftypemethod.

Method on c: f (const type& x)
Defmethod.
';

$result_errors{'empty_deftype'} = [
  {
    'error_line' => ':1: warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => ':5: warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => ':9: warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 9,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => ':13: warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 13,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  }
];


1;
