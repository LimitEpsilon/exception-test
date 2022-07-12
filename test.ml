let f = fun x -> print_endline "foo"; 
                 fun ~sec:y -> print_endline "bar"; 
                               fun z -> x - y + z
let g y = f ~sec:y
let () = print_endline (string_of_int (g 1 2 3))
