for file in $(ls tests/*.ml)
  do
  ocamlc -bin-annot -c -verbose $file
  done
