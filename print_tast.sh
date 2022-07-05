for file in $(ls *.ml)
  do
  ocamlc -dtypedtree -c $file 2>&1 | cat > $file.tast
  done
