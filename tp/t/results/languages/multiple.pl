use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'multiple'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'fr'
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
          'cmdname' => 'documentlanguage',
          'extra' => {
            'spaces_before_argument' => ' ',
            'text_arg' => 'fr'
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
          'cmdname' => 'copying',
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
              'cmdname' => 'defivar',
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'extra' => {
                                'documentlanguage' => 'fr'
                              },
                              'parent' => {},
                              'text' => 'Instance Variable',
                              'type' => 'untranslated'
                            }
                          ],
                          'extra' => {
                            'def_role' => 'category'
                          },
                          'parent' => {},
                          'type' => 'bracketed_inserted'
                        },
                        {
                          'extra' => {
                            'def_role' => 'spaces'
                          },
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'spaces_inserted'
                        },
                        {
                          'extra' => {
                            'def_role' => 'class'
                          },
                          'text' => 'copying'
                        },
                        {
                          'extra' => {
                            'def_role' => 'spaces'
                          },
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'spaces'
                        },
                        {
                          'extra' => {
                            'def_role' => 'name'
                          },
                          'text' => 'a'
                        },
                        {
                          'extra' => {
                            'def_role' => 'spaces'
                          },
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'spaces'
                        },
                        {
                          'extra' => {
                            'def_role' => 'arg'
                          },
                          'parent' => {},
                          'text' => 'b'
                        },
                        {
                          'extra' => {
                            'def_role' => 'spaces'
                          },
                          'parent' => {},
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
                    'def_command' => 'defivar',
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
                          'text' => ' de '
                        },
                        {}
                      ],
                      'content_normalized' => [
                        {},
                        {
                          'text' => ' of '
                        },
                        {}
                      ],
                      'in_code' => 1,
                      'index_at_command' => 'defivar',
                      'index_name' => 'vr',
                      'index_type_command' => 'defivar',
                      'key' => 'a de copying',
                      'number' => 1,
                      'region' => {}
                    },
                    'original_def_cmdname' => 'defivar'
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 4,
                    'macro' => ''
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
                          'text' => 'defivar'
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
                    'command_argument' => 'defivar',
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'defivar'
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
                'spaces_before_argument' => ' '
              },
              'line_nr' => {},
              'parent' => {}
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'copying'
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
                'command_argument' => 'copying',
                'spaces_before_argument' => ' ',
                'text_arg' => 'copying'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 6,
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
        }
      ],
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
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'defivar',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'extra' => {
                            'documentlanguage' => 'fr'
                          },
                          'parent' => {},
                          'text' => 'Instance Variable',
                          'type' => 'untranslated'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'type' => 'bracketed_inserted'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces_inserted'
                    },
                    {
                      'extra' => {
                        'def_role' => 'class'
                      },
                      'text' => 'fr'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'text' => 'BBB'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'CCC'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
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
                'def_command' => 'defivar',
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
                      'text' => ' de '
                    },
                    {}
                  ],
                  'content_normalized' => [
                    {},
                    {
                      'text' => ' of '
                    },
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'defivar',
                  'index_name' => 'vr',
                  'index_type_command' => 'defivar',
                  'key' => 'BBB de fr',
                  'node' => {},
                  'number' => 2
                },
                'original_def_cmdname' => 'defivar'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 10,
                'macro' => ''
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
                      'text' => 'defivar'
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
                'command_argument' => 'defivar',
                'spaces_before_argument' => ' ',
                'text_arg' => 'defivar'
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
            'spaces_before_argument' => ' '
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
          'args' => [
            {
              'parent' => {},
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'insertcopying',
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 13,
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
                  'text' => 'pt'
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
          'cmdname' => 'documentlanguage',
          'extra' => {
            'spaces_before_argument' => ' ',
            'text_arg' => 'pt'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 15,
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
          'cmdname' => 'defivar',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'extra' => {
                            'documentlanguage' => 'pt'
                          },
                          'parent' => {},
                          'text' => 'Instance Variable',
                          'type' => 'untranslated'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'type' => 'bracketed_inserted'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces_inserted'
                    },
                    {
                      'extra' => {
                        'def_role' => 'class'
                      },
                      'text' => 'pt'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'text' => 'BBB'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'CCC'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
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
                'def_command' => 'defivar',
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
                      'text' => ' da '
                    },
                    {}
                  ],
                  'content_normalized' => [
                    {},
                    {
                      'text' => ' of '
                    },
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'defivar',
                  'index_name' => 'vr',
                  'index_type_command' => 'defivar',
                  'key' => 'BBB da pt',
                  'node' => {},
                  'number' => 3
                },
                'original_def_cmdname' => 'defivar'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 17,
                'macro' => ''
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
                      'text' => 'defivar'
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
                'command_argument' => 'defivar',
                'spaces_before_argument' => ' ',
                'text_arg' => 'defivar'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 18,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
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
          'args' => [
            {
              'parent' => {},
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'insertcopying',
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 20,
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
        'line_nr' => 8,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'command'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'region'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'line_nr'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'line_nr'};
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'multiple'}{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'multiple'}{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'parent'} = $result_trees{'multiple'};
$result_trees{'multiple'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'line_nr'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'line_nr'};
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[3];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[5]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[5];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[6]{'parent'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[7];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[1]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[7];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'extra'}{'end_command'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'line_nr'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'line_nr'};
$result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'parent'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[8]{'parent'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'parent'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'multiple'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'} = $result_trees{'multiple'}{'contents'}[1]{'extra'}{'node_content'};
$result_trees{'multiple'}{'contents'}[1]{'parent'} = $result_trees{'multiple'};

$result_texis{'multiple'} = '@documentlanguage fr

@copying
@defivar copying a b
@end defivar
@end copying

@node Top

@defivar fr BBB CCC
@end defivar

@insertcopying

@documentlanguage pt

@defivar pt BBB CCC
@end defivar

@insertcopying
';


$result_texts{'multiple'} = '


Instance Variable of fr: BBB CCC



Instance Variable of pt: BBB CCC

';

$result_sectioning{'multiple'} = {};

$result_nodes{'multiple'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  },
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
$result_nodes{'multiple'}{'node_up'}{'extra'}{'top_node_up'} = $result_nodes{'multiple'};

$result_menus{'multiple'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_errors{'multiple'} = [];



$result_converted{'plaintext'}->{'multiple'} = ' -- Variable d\'instance de fr : BBB CCC

 -- Variable d\'instance de copying : a b

 -- Instance Variable da pt: BBB CCC

 -- Instance Variable da copying: a b
';


$result_converted{'info'}->{'multiple'} = 'This is , produced from .

 -- Variable d\'instance de copying : a b


File: ,  Node: Top,  Up: (dir)

 -- Variable d\'instance de fr : BBB CCC

 -- Variable d\'instance de copying : a b

 -- Instance Variable da pt: BBB CCC

 -- Instance Variable da copying: a b


Tag Table:
Node: Top69

End Tag Table
';


$result_converted{'html'}->{'multiple'} = '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- Instance Variable da copying: a b -->
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Documento Sem Nome</title>

<meta name="description" content="Documento Sem Nome">
<meta name="keywords" content="Documento Sem Nome">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<link href="#Top" rel="start" title="Top">
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

<body lang="pt">


<a name="Top"></a>
<h1 class="node-heading">Top</h1>

<dl>
<dt><a name="index-BBB-of-fr"></a>Variable d\'instance de fr&nbsp;: <strong>BBB</strong> <em>CCC</em></dt>
</dl>

<dl>
<dt><a name="index-copying-a-of-copying"></a>Variable d\'instance de copying&nbsp;: <strong>a</strong> <em>b</em></dt>
</dl>


<dl>
<dt><a name="index-BBB-of-pt"></a>Instance Variable da pt: <strong>BBB</strong> <em>CCC</em></dt>
</dl>

<dl>
<dt><a name="index-copying-a-of-copying"></a>Instance Variable da copying: <strong>a</strong> <em>b</em></dt>
</dl>
<hr>



</body>
</html>
';

$result_converted_errors{'html'}->{'multiple'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
