use vars qw(%result_texts %result_trees %result_errors);

$result_trees{'accent_argument'} = {
  'contents' => [
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '~',
              'parent' => {},
              'type' => 'command_as_argument'
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
              'cmdname' => 'comment',
              'parent' => {}
            }
          ],
          'parent' => {},
          'type' => 'block_line_arg'
        }
      ],
      'cmdname' => 'itemize',
      'contents' => [
        {
          'contents' => [],
          'parent' => {},
          'type' => 'before_item'
        },
        {
          'cmdname' => 'item',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => ' item
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            }
          ],
          'parent' => {}
        }
      ],
      'parent' => {},
      'remaining_args' => 0
    },
    {
      'parent' => {},
      'text' => '
',
      'type' => 'empty_line_after_command'
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
              'text' => ' '
            },
            {
              'cmdname' => '~',
              'parent' => {},
              'type' => 'command_as_argument'
            },
            {
              'parent' => {},
              'text' => '
'
            }
          ],
          'parent' => {},
          'type' => 'block_line_arg'
        }
      ],
      'cmdname' => 'itemize',
      'contents' => [
        {
          'contents' => [],
          'parent' => {},
          'type' => 'before_item'
        },
        {
          'cmdname' => 'item',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => ' item
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            }
          ],
          'parent' => {}
        }
      ],
      'parent' => {},
      'remaining_args' => 0
    },
    {
      'parent' => {},
      'text' => '
',
      'type' => 'empty_line_after_command'
    }
  ]
};
$result_trees{'accent_argument'}{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0]{'args'}[0];
$result_trees{'accent_argument'}{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0]{'args'}[0];
$result_trees{'accent_argument'}{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'accent_argument'}{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0]{'args'}[0];
$result_trees{'accent_argument'}{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0];
$result_trees{'accent_argument'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0];
$result_trees{'accent_argument'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'accent_argument'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0]{'contents'}[1];
$result_trees{'accent_argument'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'accent_argument'}{'contents'}[0];
$result_trees{'accent_argument'}{'contents'}[0]{'parent'} = $result_trees{'accent_argument'};
$result_trees{'accent_argument'}{'contents'}[1]{'parent'} = $result_trees{'accent_argument'};
$result_trees{'accent_argument'}{'contents'}[2]{'parent'} = $result_trees{'accent_argument'};
$result_trees{'accent_argument'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'accent_argument'}{'contents'}[3]{'args'}[0];
$result_trees{'accent_argument'}{'contents'}[3]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'accent_argument'}{'contents'}[3]{'args'}[0];
$result_trees{'accent_argument'}{'contents'}[3]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'accent_argument'}{'contents'}[3]{'args'}[0];
$result_trees{'accent_argument'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'accent_argument'}{'contents'}[3];
$result_trees{'accent_argument'}{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'accent_argument'}{'contents'}[3];
$result_trees{'accent_argument'}{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'accent_argument'}{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'accent_argument'}{'contents'}[3]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'accent_argument'}{'contents'}[3]{'contents'}[1];
$result_trees{'accent_argument'}{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'accent_argument'}{'contents'}[3];
$result_trees{'accent_argument'}{'contents'}[3]{'parent'} = $result_trees{'accent_argument'};
$result_trees{'accent_argument'}{'contents'}[4]{'parent'} = $result_trees{'accent_argument'};

$result_texts{'accent_argument'} = '@itemize @~@comment
@item item
@end itemize

@itemize @~
@item item
@end itemize
';

$result_errors{'accent_argument'} = [];


