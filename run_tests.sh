REANALYZE='reanalyze-test'
for cmt in $(ls *.cmt)
  do
  $REANALYZE -exception-cmt $cmt 2>&1 | cat >"$cmt.result"
  done
