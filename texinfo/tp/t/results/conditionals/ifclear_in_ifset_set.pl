use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors);

use utf8;

$result_trees{'ifclear_in_ifset_set'} = {
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
          'text' => 'a',
          'type' => 'misc_arg'
        },
        {
          'parent' => {},
          'text' => '',
          'type' => 'misc_arg'
        }
      ],
      'cmdname' => 'set',
      'extra' => {
        'arg_line' => ' a
'
      },
      'parent' => {}
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
              'extra' => {
                'command' => {}
              },
              'parent' => {},
              'text' => ' ',
              'type' => 'empty_spaces_after_command'
            },
            {
              'parent' => {},
              'text' => 'junky   - ok, ignored'
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
        'text_arg' => 'junky   - ok, ignored'
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 6,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'extra' => {
                'command' => {}
              },
              'parent' => {},
              'text' => ' ',
              'type' => 'empty_spaces_after_command'
            },
            {
              'parent' => {},
              'text' => 'ifset'
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
        'text_arg' => 'ifset'
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 7,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'args' => [
        {
          'parent' => {},
          'text' => ' WRONG - missing @end ifset.
',
          'type' => 'misc_arg'
        }
      ],
      'cmdname' => 'c',
      'parent' => {}
    }
  ],
  'type' => 'text_root'
};
$result_trees{'ifclear_in_ifset_set'}{'contents'}[0]{'parent'} = $result_trees{'ifclear_in_ifset_set'};
$result_trees{'ifclear_in_ifset_set'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'ifclear_in_ifset_set'}{'contents'}[1];
$result_trees{'ifclear_in_ifset_set'}{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'ifclear_in_ifset_set'}{'contents'}[1];
$result_trees{'ifclear_in_ifset_set'}{'contents'}[1]{'parent'} = $result_trees{'ifclear_in_ifset_set'};
$result_trees{'ifclear_in_ifset_set'}{'contents'}[2]{'parent'} = $result_trees{'ifclear_in_ifset_set'};
$result_trees{'ifclear_in_ifset_set'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'extra'}{'command'} = $result_trees{'ifclear_in_ifset_set'}{'contents'}[3];
$result_trees{'ifclear_in_ifset_set'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ifclear_in_ifset_set'}{'contents'}[3]{'args'}[0];
$result_trees{'ifclear_in_ifset_set'}{'contents'}[3]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'ifclear_in_ifset_set'}{'contents'}[3]{'args'}[0];
$result_trees{'ifclear_in_ifset_set'}{'contents'}[3]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'ifclear_in_ifset_set'}{'contents'}[3]{'args'}[0];
$result_trees{'ifclear_in_ifset_set'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'ifclear_in_ifset_set'}{'contents'}[3];
$result_trees{'ifclear_in_ifset_set'}{'contents'}[3]{'parent'} = $result_trees{'ifclear_in_ifset_set'};
$result_trees{'ifclear_in_ifset_set'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'extra'}{'command'} = $result_trees{'ifclear_in_ifset_set'}{'contents'}[4];
$result_trees{'ifclear_in_ifset_set'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ifclear_in_ifset_set'}{'contents'}[4]{'args'}[0];
$result_trees{'ifclear_in_ifset_set'}{'contents'}[4]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'ifclear_in_ifset_set'}{'contents'}[4]{'args'}[0];
$result_trees{'ifclear_in_ifset_set'}{'contents'}[4]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'ifclear_in_ifset_set'}{'contents'}[4]{'args'}[0];
$result_trees{'ifclear_in_ifset_set'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'ifclear_in_ifset_set'}{'contents'}[4];
$result_trees{'ifclear_in_ifset_set'}{'contents'}[4]{'parent'} = $result_trees{'ifclear_in_ifset_set'};
$result_trees{'ifclear_in_ifset_set'}{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'ifclear_in_ifset_set'}{'contents'}[5];
$result_trees{'ifclear_in_ifset_set'}{'contents'}[5]{'parent'} = $result_trees{'ifclear_in_ifset_set'};

$result_texis{'ifclear_in_ifset_set'} = '
@set a

@end junky   - ok, ignored
@end ifset
@c WRONG - missing @end ifset.
';


$result_texts{'ifclear_in_ifset_set'} = '

';

$result_errors{'ifclear_in_ifset_set'} = [
  {
    'error_line' => ':6: warning: Unknown @end junky
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => '',
    'text' => 'Unknown @end junky',
    'type' => 'warning'
  },
  {
    'error_line' => ':7: Unmatched `@end\'
',
    'file_name' => '',
    'line_nr' => 7,
    'macro' => '',
    'text' => 'Unmatched `@end\'',
    'type' => 'error'
  },
  {
    'error_line' => ':8: Expected @end ifclear
',
    'file_name' => '',
    'line_nr' => 8,
    'macro' => '',
    'text' => 'Expected @end ifclear',
    'type' => 'error'
  },
  {
    'error_line' => ':8: Expected @end ifset
',
    'file_name' => '',
    'line_nr' => 8,
    'macro' => '',
    'text' => 'Expected @end ifset',
    'type' => 'error'
  }
];


1;
