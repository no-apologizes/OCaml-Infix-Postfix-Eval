(* let () = print_endline "Hello, World!" *)
let add x y = x + y
(*let add3 = add 3*)
let add3 (x, y) = (x + y)

let max1 x y = if x > y then x else y
let max3 = fun x y -> if x > y then x else y
let max5 (x, y) = if x > y then x else y
let at_least_zero = fun y -> max5 (0, y)