use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors);

use utf8;

$result_trees{'macro_in_end_argument'} = {
  'contents' => [
    {
      'args' => [
        {
          'parent' => {},
          'text' => 'a-cartouche',
          'type' => 'macro_name'
        }
      ],
      'cmdname' => 'macro',
      'contents' => [
        {
          'parent' => {},
          'text' => 'cartouche
',
          'type' => 'raw'
        }
      ],
      'extra' => {
        'arg_line' => ' a-cartouche
',
        'macrobody' => 'cartouche
'
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
      'type' => 'empty_line_after_command'
    },
    {
      'parent' => {},
      'text' => '
',
      'type' => 'empty_line'
    },
    {
      'cmdname' => 'cartouche',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line_after_command'
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
                  'text' => 'cartouche'
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
          'cmdname' => 'end',
          'extra' => {
            'command' => {},
            'command_argument' => 'cartouche',
            'text_arg' => 'cartouche'
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
        'line_nr' => 5,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'text_root'
};
$result_trees{'macro_in_end_argument'}{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'macro_in_end_argument'}{'contents'}[0];
$result_trees{'macro_in_end_argument'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_end_argument'}{'contents'}[0];
$result_trees{'macro_in_end_argument'}{'contents'}[0]{'parent'} = $result_trees{'macro_in_end_argument'};
$result_trees{'macro_in_end_argument'}{'contents'}[1]{'parent'} = $result_trees{'macro_in_end_argument'};
$result_trees{'macro_in_end_argument'}{'contents'}[2]{'parent'} = $result_trees{'macro_in_end_argument'};
$result_trees{'macro_in_end_argument'}{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'macro_in_end_argument'}{'contents'}[3];
$result_trees{'macro_in_end_argument'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_end_argument'}{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_end_argument'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_in_end_argument'}{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_end_argument'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'macro_in_end_argument'}{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_end_argument'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_end_argument'}{'contents'}[3]{'contents'}[1];
$result_trees{'macro_in_end_argument'}{'contents'}[3]{'contents'}[1]{'extra'}{'command'} = $result_trees{'macro_in_end_argument'}{'contents'}[3];
$result_trees{'macro_in_end_argument'}{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'macro_in_end_argument'}{'contents'}[3];
$result_trees{'macro_in_end_argument'}{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'macro_in_end_argument'}{'contents'}[3]{'contents'}[1];
$result_trees{'macro_in_end_argument'}{'contents'}[3]{'parent'} = $result_trees{'macro_in_end_argument'};

$result_texis{'macro_in_end_argument'} = '@macro a-cartouche
cartouche
@end macro

@cartouche
@end cartouche
';


$result_texts{'macro_in_end_argument'} = '
';

$result_errors{'macro_in_end_argument'} = [];


1;
