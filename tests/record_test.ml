type r = {mutable x : int; y : bool; z : bool}

let a = {x = 3; y = true; z = false}

let y = match a with
  | {x = 1; y = true; z} -> 3
  | z -> z.x <- 1; (match z with | {x = 1; y = true} -> z.x | _ -> 2)

