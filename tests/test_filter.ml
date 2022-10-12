type t = A of t * t | B of t * t | C of t * t | D

let x = match (A (B (C (D, D), D), B (C (D, D), D))) with
  | A ((A (y, _) |B (y, _) |C (y, _)), (A _ | B _ | C _ | D)) -> y
  | A (D, y) -> y
  | B (x, _) -> x
  | C (x, _) -> x
  | D -> D
