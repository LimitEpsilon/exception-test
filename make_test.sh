for file in $(ls *.ml)
  do
  ocamlc -bin-annot -c $file
  done
