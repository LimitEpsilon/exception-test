let f () = raise Not_found
type t = A of (unit -> unit) | B of int

let () = match (A f, 2) with
  | (_, 3) -> ()
  | (A g, _) -> g ()
