use vars qw(%result_texis %result_texts %result_trees %result_errors %results_indices);

$result_trees{'unclosed_verb_on_section_line'} = {
  'contents' => [
    {
      'contents' => [],
      'type' => 'text_root'
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
              'text' => 'in section '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'ruc
',
                      'type' => 'raw'
                    },
                    {
                      'parent' => {},
                      'text' => '
',
                      'type' => 'raw'
                    },
                    {
                      'parent' => {},
                      'text' => 'Now text.
',
                      'type' => 'raw'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'verb',
              'contents' => [],
              'parent' => {},
              'type' => 'T'
            }
          ],
          'parent' => {},
          'type' => 'misc_line_arg'
        }
      ],
      'cmdname' => 'section',
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'unclosed_verb_on_section_line'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'unclosed_verb_on_section_line'}{'contents'}[1]{'args'}[0];
$result_trees{'unclosed_verb_on_section_line'}{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'unclosed_verb_on_section_line'}{'contents'}[1]{'args'}[0];
$result_trees{'unclosed_verb_on_section_line'}{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'unclosed_verb_on_section_line'}{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'unclosed_verb_on_section_line'}{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'unclosed_verb_on_section_line'}{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'unclosed_verb_on_section_line'}{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'unclosed_verb_on_section_line'}{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'unclosed_verb_on_section_line'}{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'unclosed_verb_on_section_line'}{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'unclosed_verb_on_section_line'}{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'unclosed_verb_on_section_line'}{'contents'}[1]{'args'}[0];
$result_trees{'unclosed_verb_on_section_line'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'unclosed_verb_on_section_line'}{'contents'}[1];
$result_trees{'unclosed_verb_on_section_line'}{'contents'}[1]{'parent'} = $result_trees{'unclosed_verb_on_section_line'};

$result_texis{'unclosed_verb_on_section_line'} = '@section in section @verb{Truc

Now text.
T}';


$result_texts{'unclosed_verb_on_section_line'} = 'in section ruc

Now text.
';

$result_sectioning{'unclosed_verb_on_section_line'} = {
  'childs' => [
    {
      'level' => 2,
      'number' => 1,
      'up' => {}
    }
  ],
  'level' => 1,
  'text' => '_ROOT'
};
$result_sectioning{'unclosed_verb_on_section_line'}{'childs'}[0]{'up'} = $result_sectioning{'unclosed_verb_on_section_line'};
$result_errors{'unclosed_verb_on_section_line'} = [
  {
    'error_line' => ':3: @verb missing closing delimiter sequence: T}
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => '@verb missing closing delimiter sequence: T}',
    'type' => 'error'
  }
];


1;
