for file in $(ls tests/*.cmt)
  do
  reanalyze-test -debug -exception-cmt $file 2>&1 | cat > $file.debug.log
  done
