use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted);

$result_trees{'empty_line'} = {
  'contents' => [
    {
      'cmdname' => 'example',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line_after_command'
        },
        {
          'parent' => {},
          'text' => 'example
'
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'parent' => {},
          'text' => 'after empty line
'
        }
      ],
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
$result_trees{'empty_line'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_line'}{'contents'}[0];
$result_trees{'empty_line'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_line'}{'contents'}[0];
$result_trees{'empty_line'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'empty_line'}{'contents'}[0];
$result_trees{'empty_line'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'empty_line'}{'contents'}[0];
$result_trees{'empty_line'}{'contents'}[0]{'parent'} = $result_trees{'empty_line'};
$result_trees{'empty_line'}{'contents'}[1]{'parent'} = $result_trees{'empty_line'};

$result_texis{'empty_line'} = '@example
example

after empty line
@end example
';


$result_texts{'empty_line'} = 'example

after empty line
';

$result_errors{'empty_line'} = [];


1;
