module type T = sig
  type t
end

exception A
exception B

module F(X:T) = struct

let map f x = f x

end
module A = struct
type t = int
end

module B = struct
type t = string
end

module FA = F(A)
module FB = F(B)

let _ = FA.map (fun _ -> raise A) 1
let _ = FB.map (fun _ -> raise B) 1
