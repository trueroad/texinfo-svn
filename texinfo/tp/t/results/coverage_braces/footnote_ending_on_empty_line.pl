use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'footnote_ending_on_empty_line'} = {
  'contents' => [
    {
      'contents' => [
        {
          'parent' => {},
          'text' => 'text'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_spaces_before_argument'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in footnote.
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line'
                }
              ],
              'parent' => {},
              'type' => 'brace_command_context'
            }
          ],
          'cmdname' => 'footnote',
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
    }
  ],
  'type' => 'text_root'
};
$result_trees{'footnote_ending_on_empty_line'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnote_ending_on_empty_line'}{'contents'}[0];
$result_trees{'footnote_ending_on_empty_line'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnote_ending_on_empty_line'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'footnote_ending_on_empty_line'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'footnote_ending_on_empty_line'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'footnote_ending_on_empty_line'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'footnote_ending_on_empty_line'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'footnote_ending_on_empty_line'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'footnote_ending_on_empty_line'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'footnote_ending_on_empty_line'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'footnote_ending_on_empty_line'}{'contents'}[0]{'contents'}[1];
$result_trees{'footnote_ending_on_empty_line'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'footnote_ending_on_empty_line'}{'contents'}[0];
$result_trees{'footnote_ending_on_empty_line'}{'contents'}[0]{'parent'} = $result_trees{'footnote_ending_on_empty_line'};

$result_texis{'footnote_ending_on_empty_line'} = 'text@footnote{ in footnote.

}';


$result_texts{'footnote_ending_on_empty_line'} = 'text';

$result_errors{'footnote_ending_on_empty_line'} = [];



$result_converted{'plaintext'}->{'footnote_ending_on_empty_line'} = 'text(1)

   ---------- Footnotes ----------

   (1) in footnote.

';


$result_converted{'html_text'}->{'footnote_ending_on_empty_line'} = '<p>text<a name="DOCF1" href="#FOOT1">(1)</a></p><div class="footnote">
<hr>
<h3 class="footnotes-heading">Footnotes</h3>

<h3><a name="FOOT1" href="#DOCF1">(1)</a></h3>
<p>in footnote.
</p>
</div>
';

1;
