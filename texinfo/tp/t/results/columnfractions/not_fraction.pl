use vars qw(%result_texts %result_trees %result_errors);

$result_trees{'not_fraction'} = {
  'contents' => [
    {
      'args' => [
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'aaa
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'misc_line_arg'
                }
              ],
              'cmdname' => 'columnfractions',
              'parent' => {},
              'special' => {}
            }
          ],
          'parent' => {},
          'type' => 'block_line_arg'
        }
      ],
      'cmdname' => 'multitable',
      'contents' => [
        {
          'contents' => [],
          'parent' => {},
          'type' => 'before_item'
        }
      ],
      'parent' => {},
      'special' => {
        'max_columns' => 0
      }
    }
  ]
};
$result_trees{'not_fraction'}{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'not_fraction'}{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'not_fraction'}{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'not_fraction'}{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'not_fraction'}{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'not_fraction'}{'contents'}[0]{'args'}[0];
$result_trees{'not_fraction'}{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'not_fraction'}{'contents'}[0];
$result_trees{'not_fraction'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'not_fraction'}{'contents'}[0];
$result_trees{'not_fraction'}{'contents'}[0]{'parent'} = $result_trees{'not_fraction'};

$result_texts{'not_fraction'} = '@multitable @columnfractions aaa
@end multitable
';

$result_errors{'not_fraction'} = [
  {
    'error_line' => ':1: column fraction not a number: aaa
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'column fraction not a number: aaa',
    'type' => 'error'
  }
];


