use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'space_in_anchor'} = {
  'contents' => [
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'anchor  name'
            },
            {
              'parent' => {},
              'text' => '   ',
              'type' => 'spaces_at_end'
            }
          ],
          'extra' => {
            'spaces_before_argument' => '   '
          },
          'parent' => {},
          'type' => 'brace_command_arg'
        }
      ],
      'cmdname' => 'anchor',
      'contents' => [],
      'extra' => {
        'brace_command_contents' => [
          [
            {}
          ]
        ],
        'node_content' => [
          {}
        ],
        'normalized' => 'anchor-name'
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'contents' => [
        {
          'parent' => {},
          'text' => '.
'
        }
      ],
      'parent' => {},
      'type' => 'paragraph'
    }
  ],
  'type' => 'text_root'
};
$result_trees{'space_in_anchor'}{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'space_in_anchor'}{'contents'}[0]{'args'}[0];
$result_trees{'space_in_anchor'}{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'space_in_anchor'}{'contents'}[0]{'args'}[0];
$result_trees{'space_in_anchor'}{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'space_in_anchor'}{'contents'}[0];
$result_trees{'space_in_anchor'}{'contents'}[0]{'extra'}{'brace_command_contents'}[0][0] = $result_trees{'space_in_anchor'}{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'space_in_anchor'}{'contents'}[0]{'extra'}{'node_content'}[0] = $result_trees{'space_in_anchor'}{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'space_in_anchor'}{'contents'}[0]{'parent'} = $result_trees{'space_in_anchor'};
$result_trees{'space_in_anchor'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'space_in_anchor'}{'contents'}[1];
$result_trees{'space_in_anchor'}{'contents'}[1]{'parent'} = $result_trees{'space_in_anchor'};

$result_texis{'space_in_anchor'} = '@anchor{   anchor  name   }.
';


$result_texts{'space_in_anchor'} = '.
';

$result_errors{'space_in_anchor'} = [];



$result_converted{'plaintext'}->{'space_in_anchor'} = '.
';


$result_converted{'html_text'}->{'space_in_anchor'} = '<a name="anchor-name"></a><p>.
</p>';

1;
