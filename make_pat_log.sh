for file in $(ls *.cmt)
  do
  reanalyze-test -debug -debug-pat -exception-cmt $file 2>&1 | cat > $file.debug_pat.log
  done
