type r = {x : int; y : int}

let f ?(o = 1) ~l1:x y ~l2:z = -o + x + y - z
let g ?(o = 2) x = x + o
let _ = (f ~o:3 ~l2:4)

let _ = (fun ~x->x)5

let aa = {x = 1; y = 2}

let g = function
  | {x = x1; y = 1} -> ()
  | {x = 1; y = y1} -> ()
  | _ -> ()

let _ = (let arr = [|0;1;2|] in let f n m = arr.(n) <- m in f)

let exn_of_string x = Failure x

let g y = raise (exn_of_string y)

external a : (int [@untagged]) -> unit = "a" "a_nat"

let () = a 1

type t = ..
type t += C
let is_c = function
  | C -> true
  | _ -> false


module Gif = struct
  type t = {width : int; height : int}
end

let x : Gif.t = {width = 1; height = 2}
