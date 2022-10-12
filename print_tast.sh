for file in $(ls tests/*.ml)
  do
  ocamlc -dtypedtree -c $file 2>&1 | cat > $file.tast
  done
