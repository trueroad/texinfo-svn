use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'multiple_menus'} = {
  'contents' => [
    {
      'contents' => [],
      'parent' => {},
      'type' => 'text_root'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Top'
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
      'cmdname' => 'node',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'menu',
          'contents' => [
            {
              'extra' => {
                'command' => {}
              },
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line_after_command'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '(a)a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'manual_content' => [
                    {
                      'parent' => {},
                      'text' => 'a'
                    }
                  ],
                  'node_content' => [
                    {
                      'parent' => {},
                      'text' => 'a'
                    }
                  ],
                  'normalized' => 'a'
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              },
              'parent' => {},
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'menu'
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
                'command_argument' => 'menu',
                'spaces_before_argument' => ' ',
                'text_arg' => 'menu'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_after_command_elt' => {}
          },
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
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'menu',
          'contents' => [
            {
              'extra' => {
                'command' => {}
              },
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line_after_command'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '(b)b'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'manual_content' => [
                    {
                      'parent' => {},
                      'text' => 'b'
                    }
                  ],
                  'node_content' => [
                    {
                      'parent' => {},
                      'text' => 'b'
                    }
                  ],
                  'normalized' => 'b'
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              },
              'parent' => {},
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'menu'
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
                'command_argument' => 'menu',
                'spaces_before_argument' => ' ',
                'text_arg' => 'menu'
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
            'spaces_after_command_elt' => {}
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
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [],
            'normalized' => 'Top'
          }
        ],
        'normalized' => 'Top',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'multiple_menus'}{'contents'}[0]{'parent'} = $result_trees{'multiple_menus'};
$result_trees{'multiple_menus'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'args'}[0];
$result_trees{'multiple_menus'}{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'args'}[0];
$result_trees{'multiple_menus'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_node'}{'manual_content'}[0]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'extra'}{'spaces_after_command_elt'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'extra'}{'command'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[1];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[1];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[1];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[1];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[3];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[1];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[3];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'extra'}{'menu_entry_node'}{'manual_content'}[0]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[1];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[1];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[2];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[2];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'extra'}{'spaces_after_command_elt'} = $result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'contents'}[0];
$result_trees{'multiple_menus'}{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'multiple_menus'}{'contents'}[1];
$result_trees{'multiple_menus'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'multiple_menus'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'multiple_menus'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'} = $result_trees{'multiple_menus'}{'contents'}[1]{'extra'}{'node_content'};
$result_trees{'multiple_menus'}{'contents'}[1]{'parent'} = $result_trees{'multiple_menus'};

$result_texis{'multiple_menus'} = '@node Top

@menu
* (a)a::
@end menu

@menu
* (b)b::
@end menu
';


$result_texts{'multiple_menus'} = '
* (a)a::

* (b)b::
';

$result_sectioning{'multiple_menus'} = {};

$result_nodes{'multiple_menus'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  },
  'menu_child' => {
    'extra' => {
      'manual_content' => [
        {
          'text' => 'b'
        }
      ],
      'normalized' => 'b'
    }
  },
  'menus' => [
    {
      'cmdname' => 'menu',
      'extra' => {
        'end_command' => {
          'cmdname' => 'end',
          'extra' => {
            'command_argument' => 'menu',
            'spaces_before_argument' => ' ',
            'text_arg' => 'menu'
          }
        },
        'spaces_after_command_elt' => {
          'extra' => {
            'command' => {}
          },
          'text' => '
',
          'type' => 'empty_line_after_command'
        }
      }
    },
    {
      'cmdname' => 'menu',
      'extra' => {
        'end_command' => {
          'cmdname' => 'end',
          'extra' => {
            'command_argument' => 'menu',
            'spaces_before_argument' => ' ',
            'text_arg' => 'menu'
          }
        },
        'spaces_after_command_elt' => {
          'extra' => {
            'command' => {}
          },
          'text' => '
',
          'type' => 'empty_line_after_command'
        }
      }
    }
  ],
  'node_next' => {},
  'node_up' => {
    'extra' => {
      'manual_content' => [
        {
          'text' => 'dir'
        }
      ],
      'top_node_up' => {}
    },
    'type' => 'top_node_up'
  }
};
$result_nodes{'multiple_menus'}{'menus'}[0]{'extra'}{'spaces_after_command_elt'}{'extra'}{'command'} = $result_nodes{'multiple_menus'}{'menus'}[0];
$result_nodes{'multiple_menus'}{'menus'}[1]{'extra'}{'spaces_after_command_elt'}{'extra'}{'command'} = $result_nodes{'multiple_menus'}{'menus'}[1];
$result_nodes{'multiple_menus'}{'node_next'} = $result_nodes{'multiple_menus'}{'menu_child'};
$result_nodes{'multiple_menus'}{'node_up'}{'extra'}{'top_node_up'} = $result_nodes{'multiple_menus'};

$result_menus{'multiple_menus'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  },
  'menu_child' => {
    'extra' => {
      'manual_content' => [
        {
          'text' => 'b'
        }
      ],
      'normalized' => 'b'
    }
  }
};

$result_errors{'multiple_menus'} = [
  {
    'error_line' => ':7: warning: multiple @menu
',
    'file_name' => '',
    'line_nr' => 7,
    'macro' => '',
    'text' => 'multiple @menu',
    'type' => 'warning'
  }
];


1;
