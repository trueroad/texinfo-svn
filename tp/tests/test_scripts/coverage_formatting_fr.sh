#! /bin/sh

if test z"$srcdir" = "z"; then
  srcdir=.
fi

command=run_parser_all.sh
one_test_logs_dir=test_log
diffs_dir=diffs


dir=coverage
arg='formatting_fr'
name='formatting_fr'
[ -d "$dir" ] || mkdir $dir

srcdir_test=$dir; export srcdir_test;
"$srcdir"/"$command" -dir $dir $arg
exit_status=$?
cat $dir/$one_test_logs_dir/$name.log
if test -f $dir/$diffs_dir/$name.diff; then
  echo 
  cat $dir/$diffs_dir/$name.diff
fi
exit $exit_status

