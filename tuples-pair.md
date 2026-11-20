
`let add3 (x, y) = x + y`


expects ONE argument in the form of
a tuple with two parts: a pair

`# add3 1 2;;`
```bash
Error: The function add3 has type int * int -> int
       It is applied to too many arguments
Line 1, characters 7-8:
  This extra argument is not expected.
```


`# add3 (1 2);;`
```bash
Error: This expression has type int
       This is not a function; it cannot be applied.
```

`# add3 (1, 2);;`
```bash
- : int = 3
```

Also anything that uses `add3` must pass only one argument so,
`let addwrong2 y = add3 2 y`
is incorrect because it passes two arguments as `2` and `y`, the correct version would be `let addright2 y = add3 (2, y)`