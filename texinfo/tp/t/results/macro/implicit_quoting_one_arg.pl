use vars qw(%result_texis %result_texts %result_trees %result_errors 
%results_indices %result_sectioning %result_nodes);

$result_trees{'implicit_quoting_one_arg'} = {
  'contents' => [
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
          'text' => 'FIXME',
          'type' => 'macro_name'
        },
        {
          'parent' => {},
          'text' => 'a',
          'type' => 'macro_arg'
        }
      ],
      'cmdname' => 'macro',
      'contents' => [
        {
          'parent' => {},
          'text' => '@strong{FIXME: \\a\\}
',
          'type' => 'raw'
        }
      ],
      'extra' => {
        'arg_line' => ' FIXME{a}
',
        'args_index' => {
          'a' => 0
        },
        'macrobody' => '@strong{FIXME: \\a\\}
'
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
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'FIXME: Many arguments, separated by commas, are processed here'
                }
              ],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'strong',
          'contents' => [],
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
$result_trees{'implicit_quoting_one_arg'}{'contents'}[0]{'parent'} = $result_trees{'implicit_quoting_one_arg'};
$result_trees{'implicit_quoting_one_arg'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'implicit_quoting_one_arg'}{'contents'}[1];
$result_trees{'implicit_quoting_one_arg'}{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'implicit_quoting_one_arg'}{'contents'}[1];
$result_trees{'implicit_quoting_one_arg'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'implicit_quoting_one_arg'}{'contents'}[1];
$result_trees{'implicit_quoting_one_arg'}{'contents'}[1]{'parent'} = $result_trees{'implicit_quoting_one_arg'};
$result_trees{'implicit_quoting_one_arg'}{'contents'}[2]{'parent'} = $result_trees{'implicit_quoting_one_arg'};
$result_trees{'implicit_quoting_one_arg'}{'contents'}[3]{'parent'} = $result_trees{'implicit_quoting_one_arg'};
$result_trees{'implicit_quoting_one_arg'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'implicit_quoting_one_arg'}{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'implicit_quoting_one_arg'}{'contents'}[4]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'implicit_quoting_one_arg'}{'contents'}[4]{'contents'}[0];
$result_trees{'implicit_quoting_one_arg'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'implicit_quoting_one_arg'}{'contents'}[4];
$result_trees{'implicit_quoting_one_arg'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'implicit_quoting_one_arg'}{'contents'}[4];
$result_trees{'implicit_quoting_one_arg'}{'contents'}[4]{'parent'} = $result_trees{'implicit_quoting_one_arg'};

$result_texis{'implicit_quoting_one_arg'} = '
@macro FIXME{a}
@strong{FIXME: \\a\\}
@end macro

@strong{FIXME: Many arguments, separated by commas, are processed here}
';


$result_texts{'implicit_quoting_one_arg'} = '

FIXME: Many arguments, separated by commas, are processed here
';

$result_errors{'implicit_quoting_one_arg'} = [];


1;
