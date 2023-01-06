exception C of (int -> int)
exception D of int

let y = ref 0

let neg x = raise (D x)

let x = try y := 1; raise (C neg) with | C f -> f 1
