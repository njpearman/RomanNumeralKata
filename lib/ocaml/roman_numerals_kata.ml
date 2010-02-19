(* First step in making an OCAML Roman ?Numeral converter *)
add_i numerals value = 
  		match value with
  		| 0 -> numerals
  		| x -> add_i (numerals ^ "I") (value-1) in
  	add_i "" value
  ;;
