(* First step in making an OCAML Roman ?Numeral converter *)
let rec add_i numerals value =
	match value with
  	| 0 -> numerals
  	| x -> add_i (numerals ^ "I") (value-1)
;;
let convert value =
	add_i "" value
;;
