REANALYZE='reanalyze-test'
for cmt in $(ls tests/*.cmt)
  do
  $REANALYZE -exception-cmt $cmt 2>&1 | cat >"$cmt.result"
  done
