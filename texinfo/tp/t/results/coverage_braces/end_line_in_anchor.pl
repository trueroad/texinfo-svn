use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors);

$result_trees{'end_line_in_anchor'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'an
'
                },
                {
                  'parent' => {},
                  'text' => 'anchor'
                }
              ],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'anchor',
          'contents' => [],
          'extra' => {
            'brace_command_contents' => [
              [
                {},
                {}
              ]
            ],
            'node_content' => [
              {},
              {}
            ],
            'normalized' => 'an-anchor'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 2,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => '
'
        }
      ],
      'parent' => {},
      'type' => 'paragraph'
    }
  ],
  'type' => 'text_root'
};
$result_trees{'end_line_in_anchor'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'end_line_in_anchor'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'end_line_in_anchor'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'end_line_in_anchor'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'end_line_in_anchor'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'end_line_in_anchor'}{'contents'}[0]{'contents'}[0];
$result_trees{'end_line_in_anchor'}{'contents'}[0]{'contents'}[0]{'extra'}{'brace_command_contents'}[0][0] = $result_trees{'end_line_in_anchor'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'end_line_in_anchor'}{'contents'}[0]{'contents'}[0]{'extra'}{'brace_command_contents'}[0][1] = $result_trees{'end_line_in_anchor'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'end_line_in_anchor'}{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}[0] = $result_trees{'end_line_in_anchor'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'end_line_in_anchor'}{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}[1] = $result_trees{'end_line_in_anchor'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'end_line_in_anchor'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'end_line_in_anchor'}{'contents'}[0];
$result_trees{'end_line_in_anchor'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'end_line_in_anchor'}{'contents'}[0];
$result_trees{'end_line_in_anchor'}{'contents'}[0]{'parent'} = $result_trees{'end_line_in_anchor'};

$result_texis{'end_line_in_anchor'} = '@anchor{an
anchor}
';


$result_texts{'end_line_in_anchor'} = '
';

$result_errors{'end_line_in_anchor'} = [];



$result_converted{'plaintext'}->{'end_line_in_anchor'} = '';

1;
