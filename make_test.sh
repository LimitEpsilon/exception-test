for file in $(ls *.ml)
  do
  ocamlc -bin-annot -c -verbose $file
  done
