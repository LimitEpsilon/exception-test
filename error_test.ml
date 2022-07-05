exception ERROR of int list
exception EXIT of int list
type color = RED | BLUE | GREEN
let one = `RED
let two = `BLUE;;
let f x ~y = x - y in
  let g = (f ~y:3) in
    print_endline (string_of_int (g 1));;

let f (n, x, y) = if n < 0 then raise (x [n])
                           else if n = 0 then raise (y [])
                                         else n
let rec g m ~x y = try f (m, x, y) with
  | ERROR [a] -> g (a + 1) ~x:y x
  | EXIT [a] -> g (a + 1) y ~x:x
  | ERROR [] -> 0
  | EXIT [] -> 0
let e1 x = ERROR x
let e2 x = EXIT x
let main c = g c e1 e2
let _ = main (-2)


let rec fact ~x =
  let exception ZERO in
    if x <= 0 then raise ZERO
        else try x * (fact ~x:(x - 1)) with ZERO -> 1

let _ = print_endline (string_of_int (fact (1)))

let a = raise

let (|?) = (|>)
let id x = x
let _ = 1 |? id
let _ = Pervasives.(|>) 1 id

