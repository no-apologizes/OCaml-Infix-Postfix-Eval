type tokentype = (* variant type, can only be one of these at a time *)
  | TOKEN_NUM_LIT of float

  | TOKEN_PLUS
  | TOKEN_MINUS

  | TOKEN_LPAREN
  | TOKEN_RPAREN
  (* 4 *)
  | TOKEN_ROOT
  | TOKEN_EXP

  (* 3 *)
  | TOKEN_POS
  | TOKEN_NEG

  (* 2 *)
  | TOKEN_IMPLICIT_MUL
  | TOKEN_MUL
  | TOKEN_DIV
  | TOKEN_REM

  (* 1 *)
  | TOKEN_SUB
  | TOKEN_ADD

  | TOKEN_UNKNOWN
  | TOKEN_EOF

  (* to be removed *)
  | TOKEN_SPACE
  | TOKEN_OTHER
  | TOKEN_DIGIT

type token = { (* record type, always holds these*)
  kind : tokentype; (* can't use `type` lol*)
  line : int;
  col  : int;
}

let classify (c: char) : tokentype =
  match c with
  | '(' -> TOKEN_LPAREN
  | ')' -> TOKEN_RPAREN
  | '+' -> TOKEN_PLUS
  | '-' -> TOKEN_MINUS
  | '^' -> TOKEN_EXP
  (* root is ./ *)
  | '*' -> TOKEN_MUL
  | '/' -> TOKEN_DIV
  | '%' -> TOKEN_REM
  | '0' .. '9' -> TOKEN_DIGIT
  | ' ' | '\t' | '\n' | '\r' -> TOKEN_SPACE
  | _ -> TOKEN_OTHER

  (* 
  | _ -> TOKEN_OTHER at the top: "this match case is unused" *)