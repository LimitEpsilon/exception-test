for file in $(ls tests/*.ml)
  do
  ocamlc -o $file.exe $file
  done
