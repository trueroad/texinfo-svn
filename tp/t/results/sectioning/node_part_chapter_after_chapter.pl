use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'node_part_chapter_after_chapter'} = [
  {
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
              }
            ],
            'extra' => {
              'spaces_after_argument' => '
'
            },
            'parent' => {},
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'node',
        'contents' => [],
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
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'parent' => {},
                'text' => 'top'
              }
            ],
            'extra' => {
              'spaces_after_argument' => '
'
            },
            'parent' => {},
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'top',
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
                        'text' => 'chapter node'
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
                    'node_content' => [
                      {}
                    ],
                    'normalized' => 'chapter-node'
                  }
                },
                'line_nr' => {
                  'file_name' => '',
                  'line_nr' => 5,
                  'macro' => ''
                },
                'parent' => {},
                'type' => 'menu_entry'
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
                        'text' => 'part chapter node'
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
                    'node_content' => [
                      {}
                    ],
                    'normalized' => 'part-chapter-node'
                  }
                },
                'line_nr' => {
                  'file_name' => '',
                  'line_nr' => 6,
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
                      }
                    ],
                    'extra' => {
                      'spaces_after_argument' => '
'
                    },
                    'parent' => {},
                    'type' => 'line_arg'
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
                  'line_nr' => 7,
                  'macro' => ''
                },
                'parent' => {}
              }
            ],
            'extra' => {
              'end_command' => {}
            },
            'line_nr' => {
              'file_name' => '',
              'line_nr' => 4,
              'macro' => ''
            },
            'parent' => {}
          },
          {
            'parent' => {},
            'text' => '
',
            'type' => 'empty_line'
          }
        ],
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'level' => 0,
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 2,
          'macro' => ''
        },
        'parent' => {}
      }
    ],
    'extra' => {
      'element_command' => {},
      'node' => {},
      'section' => {}
    },
    'type' => 'element'
  },
  {
    'contents' => [
      {
        'args' => [
          {
            'contents' => [
              {
                'parent' => {},
                'text' => 'chapter node'
              }
            ],
            'extra' => {
              'spaces_after_argument' => '
'
            },
            'parent' => {},
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'node',
        'contents' => [
          {
            'parent' => {},
            'text' => '
',
            'type' => 'empty_line'
          }
        ],
        'extra' => {
          'node_content' => [
            {}
          ],
          'nodes_manuals' => [
            {
              'node_content' => [],
              'normalized' => 'chapter-node'
            }
          ],
          'normalized' => 'chapter-node',
          'spaces_before_argument' => ' '
        },
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 9,
          'macro' => ''
        },
        'parent' => {}
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'parent' => {},
                'text' => 'chapter node'
              }
            ],
            'extra' => {
              'spaces_after_argument' => '
'
            },
            'parent' => {},
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'chapter',
        'contents' => [
          {
            'parent' => {},
            'text' => '
',
            'type' => 'empty_line'
          }
        ],
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'level' => 1,
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 11,
          'macro' => ''
        },
        'number' => 1,
        'parent' => {}
      }
    ],
    'element_prev' => {},
    'extra' => {
      'element_command' => {},
      'node' => {},
      'section' => {}
    },
    'type' => 'element'
  },
  {
    'contents' => [
      {
        'args' => [
          {
            'contents' => [
              {
                'parent' => {},
                'text' => 'part chapter node'
              }
            ],
            'extra' => {
              'spaces_after_argument' => '
'
            },
            'parent' => {},
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'node',
        'contents' => [],
        'extra' => {
          'node_content' => [
            {}
          ],
          'nodes_manuals' => [
            {
              'node_content' => [],
              'normalized' => 'part-chapter-node'
            }
          ],
          'normalized' => 'part-chapter-node',
          'spaces_before_argument' => ' '
        },
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 13,
          'macro' => ''
        },
        'parent' => {}
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'parent' => {},
                'text' => 'part'
              }
            ],
            'extra' => {
              'spaces_after_argument' => '
'
            },
            'parent' => {},
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'part',
        'contents' => [
          {
            'parent' => {},
            'text' => '
',
            'type' => 'empty_line'
          }
        ],
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'level' => 0,
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 14,
          'macro' => ''
        },
        'parent' => {}
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'parent' => {},
                'text' => 'chapter with part node'
              }
            ],
            'extra' => {
              'spaces_after_argument' => '
'
            },
            'parent' => {},
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'chapter',
        'contents' => [
          {
            'parent' => {},
            'text' => '
',
            'type' => 'empty_line'
          },
          {
            'args' => [
              {
                'parent' => {},
                'text' => '
',
                'type' => 'misc_arg'
              }
            ],
            'cmdname' => 'contents',
            'line_nr' => {
              'file_name' => '',
              'line_nr' => 18,
              'macro' => ''
            },
            'parent' => {}
          }
        ],
        'extra' => {
          'associated_part' => {},
          'spaces_before_argument' => ' '
        },
        'level' => 1,
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 16,
          'macro' => ''
        },
        'number' => 2,
        'parent' => {}
      }
    ],
    'element_prev' => {},
    'extra' => {
      'element_command' => {},
      'node' => {},
      'section' => {}
    },
    'type' => 'element'
  }
];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[1]{'extra'}{'node_content'};
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[1]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[1];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[2]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[3];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[3]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'extra'}{'menu_entry_description'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[3];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[0];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[3];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[3];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0];
$result_trees{'node_part_chapter_after_chapter'}[0]{'extra'}{'element_command'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2];
$result_trees{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[0]{'extra'}{'section'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2];
$result_trees{'node_part_chapter_after_chapter'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'node_part_chapter_after_chapter'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[1]{'contents'}[0];
$result_trees{'node_part_chapter_after_chapter'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[1]{'contents'}[0];
$result_trees{'node_part_chapter_after_chapter'}[1]{'contents'}[0]{'extra'}{'node_content'}[0] = $result_trees{'node_part_chapter_after_chapter'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'node_part_chapter_after_chapter'}[1]{'contents'}[0]{'extra'}{'nodes_manuals'}[0]{'node_content'} = $result_trees{'node_part_chapter_after_chapter'}[1]{'contents'}[0]{'extra'}{'node_content'};
$result_trees{'node_part_chapter_after_chapter'}[1]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[1];
$result_trees{'node_part_chapter_after_chapter'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'node_part_chapter_after_chapter'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[1]{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[1]{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[1]{'contents'}[1]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[1];
$result_trees{'node_part_chapter_after_chapter'}[1]{'element_prev'} = $result_trees{'node_part_chapter_after_chapter'}[0];
$result_trees{'node_part_chapter_after_chapter'}[1]{'extra'}{'element_command'} = $result_trees{'node_part_chapter_after_chapter'}[1]{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[1]{'extra'}{'node'} = $result_trees{'node_part_chapter_after_chapter'}[1]{'contents'}[0];
$result_trees{'node_part_chapter_after_chapter'}[1]{'extra'}{'section'} = $result_trees{'node_part_chapter_after_chapter'}[1]{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[0];
$result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[0]{'extra'}{'node_content'}[0] = $result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[0]{'extra'}{'nodes_manuals'}[0]{'node_content'} = $result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[0]{'extra'}{'node_content'};
$result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[2];
$result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[1]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[2];
$result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[2];
$result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[2];
$result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[2]{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[2];
$result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[2]{'extra'}{'associated_part'} = $result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[2]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[2];
$result_trees{'node_part_chapter_after_chapter'}[2]{'element_prev'} = $result_trees{'node_part_chapter_after_chapter'}[1];
$result_trees{'node_part_chapter_after_chapter'}[2]{'extra'}{'element_command'} = $result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[2];
$result_trees{'node_part_chapter_after_chapter'}[2]{'extra'}{'node'} = $result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[0];
$result_trees{'node_part_chapter_after_chapter'}[2]{'extra'}{'section'} = $result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[2];

$result_texis{'node_part_chapter_after_chapter'} = '@node Top
@top top

@menu
* chapter node::
* part chapter node::
@end menu

@node chapter node

@chapter chapter node

@node part chapter node
@part part

@chapter chapter with part node

@contents
';


$result_texts{'node_part_chapter_after_chapter'} = 'top
***

* chapter node::
* part chapter node::


1 chapter node
**************

part
****

2 chapter with part node
************************

';

$result_sectioning{'node_part_chapter_after_chapter'} = {
  'level' => -1,
  'section_childs' => [
    {
      'cmdname' => 'top',
      'extra' => {
        'associated_node' => {
          'cmdname' => 'node',
          'extra' => {
            'normalized' => 'Top',
            'spaces_before_argument' => ' '
          }
        },
        'spaces_before_argument' => ' '
      },
      'level' => 0,
      'section_childs' => [
        {
          'cmdname' => 'chapter',
          'extra' => {
            'associated_node' => {
              'cmdname' => 'node',
              'extra' => {
                'normalized' => 'chapter-node',
                'spaces_before_argument' => ' '
              }
            },
            'spaces_before_argument' => ' '
          },
          'level' => 1,
          'number' => 1,
          'section_up' => {},
          'toplevel_prev' => {},
          'toplevel_up' => {}
        }
      ],
      'section_up' => {}
    },
    {
      'cmdname' => 'part',
      'extra' => {
        'part_associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {
            'associated_node' => {
              'cmdname' => 'node',
              'extra' => {
                'normalized' => 'part-chapter-node',
                'spaces_before_argument' => ' '
              }
            },
            'associated_part' => {},
            'spaces_before_argument' => ' '
          },
          'level' => 1,
          'number' => 2,
          'section_up' => {},
          'toplevel_prev' => {},
          'toplevel_up' => {}
        },
        'spaces_before_argument' => ' '
      },
      'level' => 0,
      'section_childs' => [
        {}
      ],
      'section_prev' => {},
      'section_up' => {}
    }
  ]
};
$result_sectioning{'node_part_chapter_after_chapter'}{'section_childs'}[0]{'section_childs'}[0]{'section_up'} = $result_sectioning{'node_part_chapter_after_chapter'}{'section_childs'}[0];
$result_sectioning{'node_part_chapter_after_chapter'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_prev'} = $result_sectioning{'node_part_chapter_after_chapter'}{'section_childs'}[0];
$result_sectioning{'node_part_chapter_after_chapter'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_up'} = $result_sectioning{'node_part_chapter_after_chapter'}{'section_childs'}[0];
$result_sectioning{'node_part_chapter_after_chapter'}{'section_childs'}[0]{'section_up'} = $result_sectioning{'node_part_chapter_after_chapter'};
$result_sectioning{'node_part_chapter_after_chapter'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'associated_part'} = $result_sectioning{'node_part_chapter_after_chapter'}{'section_childs'}[1];
$result_sectioning{'node_part_chapter_after_chapter'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'section_up'} = $result_sectioning{'node_part_chapter_after_chapter'}{'section_childs'}[1];
$result_sectioning{'node_part_chapter_after_chapter'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'toplevel_prev'} = $result_sectioning{'node_part_chapter_after_chapter'}{'section_childs'}[0]{'section_childs'}[0];
$result_sectioning{'node_part_chapter_after_chapter'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'toplevel_up'} = $result_sectioning{'node_part_chapter_after_chapter'}{'section_childs'}[0];
$result_sectioning{'node_part_chapter_after_chapter'}{'section_childs'}[1]{'section_childs'}[0] = $result_sectioning{'node_part_chapter_after_chapter'}{'section_childs'}[1]{'extra'}{'part_associated_section'};
$result_sectioning{'node_part_chapter_after_chapter'}{'section_childs'}[1]{'section_prev'} = $result_sectioning{'node_part_chapter_after_chapter'}{'section_childs'}[0];
$result_sectioning{'node_part_chapter_after_chapter'}{'section_childs'}[1]{'section_up'} = $result_sectioning{'node_part_chapter_after_chapter'};

$result_nodes{'node_part_chapter_after_chapter'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'level' => 0
    },
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  },
  'menu_child' => {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'chapter',
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'level' => 1,
        'number' => 1
      },
      'normalized' => 'chapter-node',
      'spaces_before_argument' => ' '
    },
    'node_next' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {
            'associated_part' => {
              'cmdname' => 'part',
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'level' => 0
            },
            'spaces_before_argument' => ' '
          },
          'level' => 1,
          'number' => 2
        },
        'normalized' => 'part-chapter-node',
        'spaces_before_argument' => ' '
      },
      'node_prev' => {},
      'node_up' => {}
    },
    'node_prev' => {},
    'node_up' => {}
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
$result_nodes{'node_part_chapter_after_chapter'}{'menu_child'}{'node_next'}{'node_prev'} = $result_nodes{'node_part_chapter_after_chapter'}{'menu_child'};
$result_nodes{'node_part_chapter_after_chapter'}{'menu_child'}{'node_next'}{'node_up'} = $result_nodes{'node_part_chapter_after_chapter'};
$result_nodes{'node_part_chapter_after_chapter'}{'menu_child'}{'node_prev'} = $result_nodes{'node_part_chapter_after_chapter'};
$result_nodes{'node_part_chapter_after_chapter'}{'menu_child'}{'node_up'} = $result_nodes{'node_part_chapter_after_chapter'};
$result_nodes{'node_part_chapter_after_chapter'}{'node_next'} = $result_nodes{'node_part_chapter_after_chapter'}{'menu_child'};
$result_nodes{'node_part_chapter_after_chapter'}{'node_up'}{'extra'}{'top_node_up'} = $result_nodes{'node_part_chapter_after_chapter'};

$result_menus{'node_part_chapter_after_chapter'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  },
  'menu_child' => {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'chapter-node',
      'spaces_before_argument' => ' '
    },
    'menu_next' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'part-chapter-node',
        'spaces_before_argument' => ' '
      },
      'menu_prev' => {},
      'menu_up' => {},
      'menu_up_hash' => {
        'Top' => 1
      }
    },
    'menu_up' => {},
    'menu_up_hash' => {
      'Top' => 1
    }
  }
};
$result_menus{'node_part_chapter_after_chapter'}{'menu_child'}{'menu_next'}{'menu_prev'} = $result_menus{'node_part_chapter_after_chapter'}{'menu_child'};
$result_menus{'node_part_chapter_after_chapter'}{'menu_child'}{'menu_next'}{'menu_up'} = $result_menus{'node_part_chapter_after_chapter'};
$result_menus{'node_part_chapter_after_chapter'}{'menu_child'}{'menu_up'} = $result_menus{'node_part_chapter_after_chapter'};

$result_errors{'node_part_chapter_after_chapter'} = [
  {
    'error_line' => ':14: warning: @node precedes @part, but parts may not be associated with nodes
',
    'file_name' => '',
    'line_nr' => 14,
    'macro' => '',
    'text' => '@node precedes @part, but parts may not be associated with nodes',
    'type' => 'warning'
  }
];


$result_elements{'node_part_chapter_after_chapter'} = [
  {
    'extra' => {
      'directions' => {
        'FastForward' => {
          'extra' => {
            'directions' => {
              'Back' => {},
              'FastBack' => {},
              'FastForward' => {
                'extra' => {
                  'directions' => {
                    'Back' => {},
                    'FastBack' => {},
                    'NodeBack' => {},
                    'NodePrev' => {},
                    'NodeUp' => {},
                    'This' => {}
                  },
                  'element_command' => {
                    'cmdname' => 'chapter',
                    'extra' => {
                      'associated_part' => {
                        'cmdname' => 'part',
                        'extra' => {
                          'spaces_before_argument' => ' '
                        },
                        'level' => 0
                      },
                      'spaces_before_argument' => ' '
                    },
                    'level' => 1,
                    'number' => 2
                  },
                  'node' => {
                    'cmdname' => 'node',
                    'extra' => {
                      'normalized' => 'part-chapter-node',
                      'spaces_before_argument' => ' '
                    },
                    'menu_prev' => {
                      'cmdname' => 'node',
                      'extra' => {
                        'normalized' => 'chapter-node',
                        'spaces_before_argument' => ' '
                      },
                      'menu_next' => {},
                      'menu_up' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'Top',
                          'spaces_before_argument' => ' '
                        },
                        'menu_child' => {}
                      },
                      'menu_up_hash' => {
                        'Top' => 1
                      }
                    },
                    'menu_up' => {},
                    'menu_up_hash' => {
                      'Top' => 1
                    }
                  },
                  'section' => {}
                },
                'type' => 'element'
              },
              'Forward' => {},
              'NodeBack' => {},
              'NodeForward' => {},
              'NodeNext' => {},
              'NodePrev' => {},
              'NodeUp' => {},
              'This' => {},
              'Up' => {}
            },
            'element_command' => {
              'cmdname' => 'chapter',
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'level' => 1,
              'number' => 1
            },
            'node' => {},
            'section' => {}
          },
          'type' => 'element'
        },
        'Forward' => {},
        'Next' => {},
        'NodeForward' => {},
        'NodeNext' => {},
        'NodeUp' => {
          'extra' => {
            'manual_content' => [
              {
                'text' => 'dir'
              }
            ],
            'top_node_up' => {}
          },
          'type' => 'external_node'
        },
        'This' => {}
      },
      'element_command' => {
        'cmdname' => 'top',
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'level' => 0
      },
      'node' => {},
      'section' => {}
    },
    'type' => 'element'
  },
  {},
  {}
];
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'Back'} = $result_elements{'node_part_chapter_after_chapter'}[0];
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'FastBack'} = $result_elements{'node_part_chapter_after_chapter'}[0];
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'Back'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'FastBack'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'NodeBack'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'NodePrev'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'NodeUp'} = $result_elements{'node_part_chapter_after_chapter'}[0];
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'This'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'FastForward'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'FastForward'}{'extra'}{'node'}{'menu_prev'}{'menu_next'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'FastForward'}{'extra'}{'node'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'FastForward'}{'extra'}{'node'}{'menu_prev'}{'menu_up'}{'menu_child'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'FastForward'}{'extra'}{'node'}{'menu_prev'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'FastForward'}{'extra'}{'node'}{'menu_up'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'FastForward'}{'extra'}{'node'}{'menu_prev'}{'menu_up'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'FastForward'}{'extra'}{'section'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'FastForward'}{'extra'}{'element_command'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'Forward'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'FastForward'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'NodeBack'} = $result_elements{'node_part_chapter_after_chapter'}[0];
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'NodeForward'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'FastForward'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'NodeNext'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'FastForward'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'NodePrev'} = $result_elements{'node_part_chapter_after_chapter'}[0];
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'NodeUp'} = $result_elements{'node_part_chapter_after_chapter'}[0];
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'This'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'Up'} = $result_elements{'node_part_chapter_after_chapter'}[0];
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'node'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'FastForward'}{'extra'}{'node'}{'menu_prev'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'section'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'element_command'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'Forward'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'Next'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'FastForward'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'NodeForward'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'NodeNext'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'NodeUp'}{'extra'}{'top_node_up'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'FastForward'}{'extra'}{'node'}{'menu_prev'}{'menu_up'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'This'} = $result_elements{'node_part_chapter_after_chapter'}[0];
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'FastForward'}{'extra'}{'node'}{'menu_prev'}{'menu_up'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'section'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'element_command'};
$result_elements{'node_part_chapter_after_chapter'}[1] = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'};
$result_elements{'node_part_chapter_after_chapter'}[2] = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'directions'}{'FastForward'}{'extra'}{'directions'}{'FastForward'};



$result_directions_text{'node_part_chapter_after_chapter'} = 'element: @top top
  FastForward: @chapter chapter node
  Forward: @chapter chapter node
  Next: @chapter chapter with part node
  NodeForward: @chapter chapter node
  NodeNext: @chapter chapter node
  NodeUp: (dir)
  This: @top top
element: @chapter chapter node
  Back: @top top
  FastBack: @top top
  FastForward: @chapter chapter with part node
  Forward: @chapter chapter with part node
  NodeBack: @top top
  NodeForward: @chapter chapter with part node
  NodeNext: @chapter chapter with part node
  NodePrev: @top top
  NodeUp: @top top
  This: @chapter chapter node
  Up: @top top
element: @chapter chapter with part node
  Back: @chapter chapter node
  FastBack: @chapter chapter node
  NodeBack: @chapter chapter node
  NodePrev: @chapter chapter node
  NodeUp: @top top
  This: @chapter chapter with part node
';


$result_converted{'plaintext'}->{'node_part_chapter_after_chapter'} = 'top
***

1 chapter node
**************

2 chapter with part node
************************

top
1 chapter node
part
2 chapter with part node
';


$result_converted{'info'}->{'node_part_chapter_after_chapter'} = 'This is , produced from .


File: ,  Node: Top,  Next: chapter node,  Up: (dir)

top
***

* Menu:

* chapter node::
* part chapter node::


File: ,  Node: chapter node,  Next: part chapter node,  Prev: Top,  Up: Top

1 chapter node
**************


File: ,  Node: part chapter node,  Prev: chapter node,  Up: Top

2 chapter with part node
************************



Tag Table:
Node: Top27
Node: chapter node140
Node: part chapter node250

End Tag Table
';


$result_converted{'html'}->{'node_part_chapter_after_chapter'} = '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>top</title>

<meta name="description" content="top">
<meta name="keywords" content="top">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<link href="#Top" rel="start" title="Top">
<link href="#SEC_Contents" rel="contents" title="Table of Contents">
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
<a name="Top"></a>
<div class="header">
<p>
Next: <a href="#chapter-node" accesskey="n" rel="next">chapter node</a>, Up: <a href="dir.html#Top" accesskey="u" rel="up">(dir)</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="top"></a>
<h1 class="top">top</h1>

<table class="menu" border="0" cellspacing="0">
<tr><td align="left" valign="top">&bull; <a href="#chapter-node" accesskey="1">chapter node</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
<tr><td align="left" valign="top">&bull; <a href="#part-chapter-node" accesskey="2">part chapter node</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
</table>

<hr>
<a name="chapter-node"></a>
<div class="header">
<p>
Next: <a href="#part-chapter-node" accesskey="n" rel="next">part chapter node</a>, Previous: <a href="#Top" accesskey="p" rel="prev">Top</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>

<a name="chapter-node-1"></a>
<h2 class="chapter">1 chapter node</h2>

<hr>
<a name="part-chapter-node"></a>
<div class="header">
<p>
Previous: <a href="#chapter-node" accesskey="p" rel="prev">chapter node</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="part"></a>
<h1 class="part">part</h1>
<hr>

<a name="chapter-with-part-node"></a>
<h2 class="chapter">2 chapter with part node</h2>

<a name="SEC_Contents"></a>
<h2 class="contents-heading">Table of Contents</h2>

<div class="contents">
<ul class="no-bullet">
<li>
<ul class="no-bullet">
  <li><a name="toc-chapter-node-1" href="#chapter-node">1 chapter node</a></li>
</ul></li>
<li><a name="toc-part" href="#part">part</a>
<ul class="no-bullet">
  <li><a name="toc-chapter-with-part-node" href="#part-chapter-node">2 chapter with part node</a></li>
</ul></li>

</ul>
</div>

<hr>



</body>
</html>
';


$result_converted{'xml'}->{'node_part_chapter_after_chapter'} = '<node name="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chapter node</nodenext><nodeup automatic="on">(dir)</nodeup></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<menu endspaces=" ">
<menuentry leadingtext="* "><menunode separator="::">chapter node</menunode><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry leadingtext="* "><menunode separator="::">part chapter node</menunode><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

</top>
<node name="chapter-node" spaces=" "><nodename>chapter node</nodename><nodenext automatic="on">part chapter node</nodenext><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>

<chapter spaces=" "><sectiontitle>chapter node</sectiontitle>

</chapter>
<node name="part-chapter-node" spaces=" "><nodename>part chapter node</nodename><nodeprev automatic="on">chapter node</nodeprev><nodeup automatic="on">Top</nodeup></node>
<part spaces=" "><sectiontitle>part</sectiontitle>

<chapter spaces=" "><sectiontitle>chapter with part node</sectiontitle>

<contents></contents>
</chapter>
</part>
';

1;
