for file in $(ls *.ml)
  do
  ocamlc -o $file.exe $file
  done
