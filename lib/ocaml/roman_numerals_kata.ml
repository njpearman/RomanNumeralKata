(* First step in making an OCAML Roman ?Numeral converter *)

let rec add_i numerals value =
	match value with
  	| 0 -> numerals
  	| x -> add_i (numerals ^ "I") (value-1)
;;

let add_numerals total value =
	match value with
	| 9 -> "IX"
	| 8 | 7 | 6 -> add_i "V" (value-5)
	| 5 -> "V"
	| 4 -> "IV"
	| x -> add_i "" x
;;

let convert value =
	print_string ((add_numerals "" value) ^ "\n") 
;;

(* 
Add this line to run as a command line executable:

	convert (int_of_string Sys.argv.(1));; 
*)
