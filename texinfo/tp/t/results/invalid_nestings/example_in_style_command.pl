use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors);

use utf8;

$result_trees{'example_in_style_command'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '
'
                }
              ],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'code',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'parent' => {},
      'type' => 'paragraph'
    },
    {
      'cmdname' => 'example',
      'contents' => [
        {
          'extra' => {
            'command' => {}
          },
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line_after_command'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'example
'
            }
          ],
          'parent' => {},
          'type' => 'preformatted'
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
                  'text' => 'example'
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
            'command_argument' => 'example',
            'text_arg' => 'example'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 4,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'end_command' => {},
        'invalid_nesting' => 1
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 2,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'text_root'
};
$result_trees{'example_in_style_command'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_in_style_command'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'example_in_style_command'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'example_in_style_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'example_in_style_command'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_in_style_command'}{'contents'}[0];
$result_trees{'example_in_style_command'}{'contents'}[0]{'parent'} = $result_trees{'example_in_style_command'};
$result_trees{'example_in_style_command'}{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'example_in_style_command'}{'contents'}[1];
$result_trees{'example_in_style_command'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'example_in_style_command'}{'contents'}[1];
$result_trees{'example_in_style_command'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'example_in_style_command'}{'contents'}[1]{'contents'}[1];
$result_trees{'example_in_style_command'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'example_in_style_command'}{'contents'}[1];
$result_trees{'example_in_style_command'}{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'extra'}{'command'} = $result_trees{'example_in_style_command'}{'contents'}[1]{'contents'}[2];
$result_trees{'example_in_style_command'}{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_in_style_command'}{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'example_in_style_command'}{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'example_in_style_command'}{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'example_in_style_command'}{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'example_in_style_command'}{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'example_in_style_command'}{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'example_in_style_command'}{'contents'}[1]{'contents'}[2];
$result_trees{'example_in_style_command'}{'contents'}[1]{'contents'}[2]{'extra'}{'command'} = $result_trees{'example_in_style_command'}{'contents'}[1];
$result_trees{'example_in_style_command'}{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'example_in_style_command'}{'contents'}[1];
$result_trees{'example_in_style_command'}{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'example_in_style_command'}{'contents'}[1]{'contents'}[2];
$result_trees{'example_in_style_command'}{'contents'}[1]{'parent'} = $result_trees{'example_in_style_command'};

$result_texis{'example_in_style_command'} = '@code{
}@example
example
@end example
';


$result_texts{'example_in_style_command'} = '
example
';

$result_errors{'example_in_style_command'} = [
  {
    'error_line' => ':2: warning: @example should not appear in @code
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => '@example should not appear in @code',
    'type' => 'warning'
  },
  {
    'error_line' => ':1: @code missing close brace
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@code missing close brace',
    'type' => 'error'
  },
  {
    'error_line' => ':5: Misplaced }
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => 'Misplaced }',
    'type' => 'error'
  }
];


1;
