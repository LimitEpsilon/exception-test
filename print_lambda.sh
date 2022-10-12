for file in $(ls tests/*.ml)
  do
  ocamlc -dlambda -c  $file 2>&1 | cat > $file.lam
  done
