type r = {mutable x : int; y : bool; z : bool}

let a = {x = 3; y = true; z = false}

let y = match a with
  | {x = 1; y = true; z} -> 3
  | w -> w.x <- 1; (match w with | {x = 1; y = true} -> w.x | _ -> 2)

