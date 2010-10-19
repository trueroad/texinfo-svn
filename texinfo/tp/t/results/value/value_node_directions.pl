use vars qw(%result_texis %result_texts %result_trees %result_errors);

$result_trees{'value_node_directions'} = {
  'contents' => [
    {
      'args' => [
        {
          'parent' => {},
          'text' => 'a--foo',
          'type' => 'misc_arg'
        },
        {
          'parent' => {},
          'text' => 'bar',
          'type' => 'misc_arg'
        }
      ],
      'cmdname' => 'set',
      'parent' => {},
      'special' => {
        'arg_line' => ' a--foo bar
'
      }
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
              'text' => 'Top'
            }
          ],
          'parent' => {},
          'type' => 'misc_line_arg'
        },
        {
          'contents' => [
            {
              'text' => ' ',
              'type' => 'empty_spaces_before_argument'
            },
            {
              'parent' => {},
              'text' => 'bar'
            }
          ],
          'parent' => {},
          'type' => 'misc_line_arg'
        },
        {
          'contents' => [
            {
              'text' => ' ',
              'type' => 'empty_spaces_before_argument'
            },
            {
              'parent' => {},
              'text' => '(dir)'
            }
          ],
          'parent' => {},
          'type' => 'misc_line_arg'
        },
        {
          'contents' => [
            {
              'text' => ' ',
              'type' => 'empty_spaces_before_argument'
            },
            {
              'parent' => {},
              'text' => '(dir)'
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
      'parent' => {},
      'remaining_args' => 1
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
              'text' => 'Var bar'
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
      'cmdname' => 'top',
      'parent' => {}
    },
    {
      'contents' => [
        {
          'parent' => {},
          'text' => 'bar
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
              'parent' => {},
              'text' => 'bar'
            }
          ],
          'parent' => {},
          'type' => 'misc_line_arg'
        },
        {
          'contents' => [
            {
              'text' => ' ',
              'type' => 'empty_spaces_before_argument'
            },
            {
              'parent' => {},
              'text' => 'BarFoo'
            }
          ],
          'parent' => {},
          'type' => 'misc_line_arg'
        },
        {
          'contents' => [
            {
              'text' => ' ',
              'type' => 'empty_spaces_before_argument'
            },
            {
              'parent' => {},
              'text' => 'Top'
            }
          ],
          'parent' => {},
          'type' => 'misc_line_arg'
        },
        {
          'contents' => [
            {
              'text' => ' ',
              'type' => 'empty_spaces_before_argument'
            },
            {
              'parent' => {},
              'text' => '(dir)'
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
      'parent' => {},
      'remaining_args' => 1
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
              'text' => 'BarFoo'
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
      'cmdname' => 'chapter',
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
              'text' => 'BarFoo'
            }
          ],
          'parent' => {},
          'type' => 'misc_line_arg'
        },
        {
          'contents' => [
            {
              'text' => ' ',
              'type' => 'empty_spaces_before_argument'
            }
          ],
          'parent' => {},
          'type' => 'misc_line_arg'
        },
        {
          'contents' => [
            {
              'text' => ' ',
              'type' => 'empty_spaces_before_argument'
            },
            {
              'parent' => {},
              'text' => 'bar'
            }
          ],
          'parent' => {},
          'type' => 'misc_line_arg'
        },
        {
          'contents' => [
            {
              'text' => ' ',
              'type' => 'empty_spaces_before_argument'
            },
            {
              'parent' => {},
              'text' => '(dir)'
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
      'parent' => {},
      'remaining_args' => 1
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
              'text' => 'bar'
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
      'cmdname' => 'chapter',
      'parent' => {}
    }
  ]
};
$result_trees{'value_node_directions'}{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[0];
$result_trees{'value_node_directions'}{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[0];
$result_trees{'value_node_directions'}{'contents'}[0]{'parent'} = $result_trees{'value_node_directions'};
$result_trees{'value_node_directions'}{'contents'}[1]{'parent'} = $result_trees{'value_node_directions'};
$result_trees{'value_node_directions'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[2]{'args'}[0];
$result_trees{'value_node_directions'}{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[2]{'args'}[0];
$result_trees{'value_node_directions'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[2];
$result_trees{'value_node_directions'}{'contents'}[2]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[2]{'args'}[1];
$result_trees{'value_node_directions'}{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[2];
$result_trees{'value_node_directions'}{'contents'}[2]{'args'}[2]{'contents'}[1]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[2]{'args'}[2];
$result_trees{'value_node_directions'}{'contents'}[2]{'args'}[2]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[2];
$result_trees{'value_node_directions'}{'contents'}[2]{'args'}[3]{'contents'}[1]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[2]{'args'}[3];
$result_trees{'value_node_directions'}{'contents'}[2]{'args'}[3]{'contents'}[2]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[2]{'args'}[3];
$result_trees{'value_node_directions'}{'contents'}[2]{'args'}[3]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[2];
$result_trees{'value_node_directions'}{'contents'}[2]{'parent'} = $result_trees{'value_node_directions'};
$result_trees{'value_node_directions'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[3]{'args'}[0];
$result_trees{'value_node_directions'}{'contents'}[3]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[3]{'args'}[0];
$result_trees{'value_node_directions'}{'contents'}[3]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[3]{'args'}[0];
$result_trees{'value_node_directions'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[3];
$result_trees{'value_node_directions'}{'contents'}[3]{'parent'} = $result_trees{'value_node_directions'};
$result_trees{'value_node_directions'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[4];
$result_trees{'value_node_directions'}{'contents'}[4]{'parent'} = $result_trees{'value_node_directions'};
$result_trees{'value_node_directions'}{'contents'}[5]{'parent'} = $result_trees{'value_node_directions'};
$result_trees{'value_node_directions'}{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[6]{'args'}[0];
$result_trees{'value_node_directions'}{'contents'}[6]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[6]{'args'}[0];
$result_trees{'value_node_directions'}{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[6];
$result_trees{'value_node_directions'}{'contents'}[6]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[6]{'args'}[1];
$result_trees{'value_node_directions'}{'contents'}[6]{'args'}[1]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[6];
$result_trees{'value_node_directions'}{'contents'}[6]{'args'}[2]{'contents'}[1]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[6]{'args'}[2];
$result_trees{'value_node_directions'}{'contents'}[6]{'args'}[2]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[6];
$result_trees{'value_node_directions'}{'contents'}[6]{'args'}[3]{'contents'}[1]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[6]{'args'}[3];
$result_trees{'value_node_directions'}{'contents'}[6]{'args'}[3]{'contents'}[2]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[6]{'args'}[3];
$result_trees{'value_node_directions'}{'contents'}[6]{'args'}[3]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[6];
$result_trees{'value_node_directions'}{'contents'}[6]{'parent'} = $result_trees{'value_node_directions'};
$result_trees{'value_node_directions'}{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[7]{'args'}[0];
$result_trees{'value_node_directions'}{'contents'}[7]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[7]{'args'}[0];
$result_trees{'value_node_directions'}{'contents'}[7]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[7]{'args'}[0];
$result_trees{'value_node_directions'}{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[7];
$result_trees{'value_node_directions'}{'contents'}[7]{'parent'} = $result_trees{'value_node_directions'};
$result_trees{'value_node_directions'}{'contents'}[8]{'parent'} = $result_trees{'value_node_directions'};
$result_trees{'value_node_directions'}{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[9]{'args'}[0];
$result_trees{'value_node_directions'}{'contents'}[9]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[9]{'args'}[0];
$result_trees{'value_node_directions'}{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[9];
$result_trees{'value_node_directions'}{'contents'}[9]{'args'}[1]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[9];
$result_trees{'value_node_directions'}{'contents'}[9]{'args'}[2]{'contents'}[1]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[9]{'args'}[2];
$result_trees{'value_node_directions'}{'contents'}[9]{'args'}[2]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[9];
$result_trees{'value_node_directions'}{'contents'}[9]{'args'}[3]{'contents'}[1]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[9]{'args'}[3];
$result_trees{'value_node_directions'}{'contents'}[9]{'args'}[3]{'contents'}[2]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[9]{'args'}[3];
$result_trees{'value_node_directions'}{'contents'}[9]{'args'}[3]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[9];
$result_trees{'value_node_directions'}{'contents'}[9]{'parent'} = $result_trees{'value_node_directions'};
$result_trees{'value_node_directions'}{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[10]{'args'}[0];
$result_trees{'value_node_directions'}{'contents'}[10]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[10]{'args'}[0];
$result_trees{'value_node_directions'}{'contents'}[10]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[10]{'args'}[0];
$result_trees{'value_node_directions'}{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'value_node_directions'}{'contents'}[10];
$result_trees{'value_node_directions'}{'contents'}[10]{'parent'} = $result_trees{'value_node_directions'};

$result_texis{'value_node_directions'} = '@set a--foo bar

@node Top, bar, (dir), (dir)
@top Var bar
bar

@node bar, BarFoo, Top, (dir)
@chapter BarFoo

@node BarFoo, , bar, (dir)
@chapter bar
';


$result_texts{'value_node_directions'} = '
Var bar
bar

BarFoo

bar
';

$result_errors{'value_node_directions'} = [];


