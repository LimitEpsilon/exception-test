exception ERROR of int list
exception EXIT of int list
let f (n, xf, yf) = if n < 0 then raise (xf [n])
                           else if n = 0 then raise (yf [n])
                                         else n
let rec g m ~x y = match f (m, x, y) with
  (*| exception ERROR [a] -> g a ~x:y x *)
  | exception ERROR [] -> g (-1) ~x:y x
  | exception EXIT [a] -> g a ~x:y x
  | exception EXIT [] -> 1
  | e -> e
let e1 xe1 = ERROR xe1
let e2 xe2 = EXIT xe2
let main c = g c e1 e2
let _ = main (-2)

