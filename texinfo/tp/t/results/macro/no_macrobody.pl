use vars qw(%result_texis %result_texts %result_trees %result_errors);

$result_trees{'no_macrobody'} = {
  'contents' => [
    {
      'args' => [
        {
          'parent' => {},
          'text' => 'no-macrobody',
          'type' => 'macro_name'
        },
        {
          'parent' => {},
          'text' => 'arg',
          'type' => 'macro_arg'
        }
      ],
      'cmdname' => 'macro',
      'contents' => [],
      'parent' => {},
      'special' => {
        'arg_line' => ' no-macrobody {arg}
',
        'args_index' => {
          'arg' => 0
        },
        'macrobody' => ''
      }
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
      'parent' => {},
      'text' => '
',
      'type' => 'empty_line'
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
          'parent' => {},
          'text' => '.
'
        }
      ],
      'parent' => {},
      'type' => 'paragraph'
    }
  ]
};
$result_trees{'no_macrobody'}{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'no_macrobody'}{'contents'}[0];
$result_trees{'no_macrobody'}{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'no_macrobody'}{'contents'}[0];
$result_trees{'no_macrobody'}{'contents'}[0]{'parent'} = $result_trees{'no_macrobody'};
$result_trees{'no_macrobody'}{'contents'}[1]{'parent'} = $result_trees{'no_macrobody'};
$result_trees{'no_macrobody'}{'contents'}[2]{'parent'} = $result_trees{'no_macrobody'};
$result_trees{'no_macrobody'}{'contents'}[3]{'parent'} = $result_trees{'no_macrobody'};
$result_trees{'no_macrobody'}{'contents'}[4]{'parent'} = $result_trees{'no_macrobody'};
$result_trees{'no_macrobody'}{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'no_macrobody'}{'contents'}[5];
$result_trees{'no_macrobody'}{'contents'}[5]{'parent'} = $result_trees{'no_macrobody'};

$result_texis{'no_macrobody'} = '@macro no-macrobody {arg}
@end macro



.
';

$result_errors{'no_macrobody'} = [];


