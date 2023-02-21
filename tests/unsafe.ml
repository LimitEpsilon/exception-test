let f () = raise Not_found
type t = A of (unit -> unit) | B of int

let g = function
  | (_, 3) -> ()
  | (A h, _) -> h ()
  | _ -> ()

let _ = g (A f, 2)

let g (x, y) = match y with
  | 3 -> ()
  | _ -> (match x with
          | A h -> h ()
          | _ -> ())

let _ = g (A f, 2)

