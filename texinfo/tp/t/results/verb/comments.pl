use vars qw(%result_texts %result_trees %result_errors);

$result_trees{'comments'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => ' comment @c comment
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => 'in a verb ',
                  'type' => 'raw'
                }
              ],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'verb',
          'contents' => [],
          'parent' => {},
          'remaining_args' => 0,
          'type' => 'a'
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => ' comment
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'c',
          'parent' => {}
        }
      ],
      'parent' => {},
      'type' => 'paragraph'
    },
    {
      'parent' => {},
      'text' => '
',
      'type' => 'normal_line'
    },
    {
      'contents' => [
        {
          'parent' => {},
          'text' => 'something '
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => ' in verb',
                  'type' => 'raw'
                }
              ],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'verb',
          'contents' => [],
          'parent' => {},
          'remaining_args' => 0,
          'type' => ','
        },
        {
          'parent' => {},
          'text' => ' '
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => ' other comment',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'c',
          'parent' => {}
        }
      ],
      'parent' => {},
      'type' => 'paragraph'
    }
  ]
};
$result_trees{'comments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'comments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'comments'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'comments'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'comments'}{'contents'}[0]{'contents'}[0];
$result_trees{'comments'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments'}{'contents'}[0];
$result_trees{'comments'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'comments'}{'contents'}[0]{'contents'}[1];
$result_trees{'comments'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'comments'}{'contents'}[0];
$result_trees{'comments'}{'contents'}[0]{'parent'} = $result_trees{'comments'};
$result_trees{'comments'}{'contents'}[1]{'parent'} = $result_trees{'comments'};
$result_trees{'comments'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'comments'}{'contents'}[2];
$result_trees{'comments'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments'}{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'comments'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'comments'}{'contents'}[2]{'contents'}[1];
$result_trees{'comments'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'comments'}{'contents'}[2];
$result_trees{'comments'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'comments'}{'contents'}[2];
$result_trees{'comments'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'comments'}{'contents'}[2]{'contents'}[3];
$result_trees{'comments'}{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'comments'}{'contents'}[2];
$result_trees{'comments'}{'contents'}[2]{'parent'} = $result_trees{'comments'};

$result_texts{'comments'} = '@verb{a comment @c comment
in a verb a}@c comment

something @verb{, in verb,} @c other comment';

$result_errors{'comments'} = [];


