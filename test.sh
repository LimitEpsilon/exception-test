REANALYZE='reanalyze-test'
for cmt in $(ls *.cmt)
  do
  $REANALYZE -exception-cmt $cmt
  done
