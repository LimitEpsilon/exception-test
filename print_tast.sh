for file in $(ls *.ml)
  do
  ocamlc -dtypedtree $file 2>&1 | cat > $file.tast
  done
