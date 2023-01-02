(* from https://github.com/Zeta611/L/blob/main/lib/monads.ml *)

module type Monad = sig
  type 'a t

  val return : 'a -> 'a t
  val bind : 'a t -> ('a -> 'b t) -> 'b t
end

module MonadSyntax (M : Monad) = struct
  let ( >>= ) = M.bind
  let ( let* ) = M.bind
end

module type Applicative = sig
  type 'a t

  val map : ('a -> 'b) -> 'a t -> 'b t
  val product : 'a t -> 'b t -> ('a * 'b) t
end

module ApplicativeSyntax (A : Applicative) = struct
  let ( >>| ) o f = A.map f o
  let ( let+ ) = ( >>| )
  let ( and+ ) = A.product
end

module ListBaseMonad : Monad with type 'a t = 'a list = struct
  type 'a t = 'a list

  let return x = [ x ]
  let bind o f = List.concat_map f o
end

module ListBaseApplicative : Applicative with type 'a t = 'a list = struct
  type 'a t = 'a list

  let map = List.map
  let product = List.combine
end

module ListMonad = struct
  include ListBaseMonad
  include MonadSyntax (ListBaseMonad)
  include ListBaseApplicative
  include ApplicativeSyntax (ListBaseApplicative)
end

open ListMonad

let monad_add list_1 list_2 =
  let+ monad_x = list_1 and+ monad_y = list_2 in
  if monad_x + monad_y = 3 then raise Not_found else monad_x + monad_y

let monad_a = monad_add [ 1; 2 ] [ 3; 4 ]
