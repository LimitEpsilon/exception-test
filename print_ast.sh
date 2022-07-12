for file in $(ls *.ml)
  do
  ocamlc -dparsetree -c $file 2>&1 | cat > $file.ast
  done
