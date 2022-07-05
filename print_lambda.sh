for file in $(ls *.ml)
  do
  ocamlc -dlambda -c  $file 2>&1 | cat > $file.lam
  done
