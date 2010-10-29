use vars qw(%result_texis %result_texts %result_trees %result_errors %results_indices);

$result_trees{'empty_multitable_with_cells'} = {
  'contents' => [
    {
      'cmdname' => 'multitable',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line_after_command'
        },
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
                  'text' => 'item in empty multitable '
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            },
            {
              'parent' => {},
              'text' => ' ',
              'type' => 'empty_spaces_after_command'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'tab in empty m '
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            },
            {
              'parent' => {},
              'text' => ' ',
              'type' => 'empty_spaces_after_command'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'second tab in empty m
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            },
            {
              'parent' => {},
              'text' => ' ',
              'type' => 'empty_spaces_after_command'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'item in empty m
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            }
          ],
          'parent' => {},
          'type' => 'before_item'
        }
      ],
      'extra' => {
        'max_columns' => 0,
        'prototypes' => []
      },
      'parent' => {}
    },
    {
      'parent' => {},
      'text' => '
',
      'type' => 'empty_line_after_command'
    }
  ],
  'type' => 'text_root'
};
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[1];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[1];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[1];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[1]{'contents'}[3];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[1];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[1];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[1]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[1]{'contents'}[5];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[1];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[1]{'contents'}[6]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[1];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[1]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[1]{'contents'}[7];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[1]{'contents'}[7]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[1];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'parent'} = $result_trees{'empty_multitable_with_cells'};
$result_trees{'empty_multitable_with_cells'}{'contents'}[1]{'parent'} = $result_trees{'empty_multitable_with_cells'};

$result_texis{'empty_multitable_with_cells'} = '@multitable
 item in empty multitable  tab in empty m  second tab in empty m
 item in empty m
@end multitable
';


$result_texts{'empty_multitable_with_cells'} = 'item in empty multitable tab in empty m second tab in empty m
item in empty m
';

$result_errors{'empty_multitable_with_cells'} = [
  {
    'error_line' => ':1: warning: empty multitable
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'empty multitable',
    'type' => 'warning'
  },
  {
    'error_line' => ':2: warning: @item in empty multitable
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => '@item in empty multitable',
    'type' => 'warning'
  },
  {
    'error_line' => ':2: warning: @tab in empty multitable
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => '@tab in empty multitable',
    'type' => 'warning'
  },
  {
    'error_line' => ':2: warning: @tab in empty multitable
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => '@tab in empty multitable',
    'type' => 'warning'
  },
  {
    'error_line' => ':3: warning: @item in empty multitable
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => '@item in empty multitable',
    'type' => 'warning'
  }
];


1;
