type t = A of t * t | B of t * t | C of t * t | D

let x = match (A (B (C (D, D), D), B (C (D, D), D))) with
  | A ((A (y, _) |B (y, _) |C (y, _)), (A _ | B _ | C _ | D)) -> y
  | A (D, y) -> y
  | B (x, D) -> x
  | C (x, _) -> x
  | D -> D

let y = match [1; 2] with
  | [x; 1] -> x
  | [2; y] -> y
  | _ -> 3
