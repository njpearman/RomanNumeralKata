(* First step in making an OCAML Roman ?Numeral converter *)

let i = "I";;
let v = "V";;
let x = "X";;
let l = "L";;
let c = "C";;

let rec add numeral total value =
	match value with
  	| 0 -> total
  	| x -> add numeral (total ^ numeral) (value-1)
;;

let rec add_i numerals value =
	add i numerals value
;;

let rec add_x numerals value =
	add x numerals (value / 10)
;;

let add_numerals total value =
	match value with
	| 9 -> total ^ i ^ x
	| 8 | 7 | 6 -> add_i (total ^ v) (value-5)
	| 5 -> total ^ v
	| 4 -> total ^ i ^ v
	| x -> add_i total x
;;

let add_tens total value =
	match (value/10) with
	| 0 -> total
	| 9 -> x ^ c
	| 6 | 7 | 8 -> add_x (total ^ l) (value-50)
	| 5 -> total ^ l
	| 4 -> total ^ x ^ l
	| x -> add_x total value
;;

let to_numerals value =
	add_numerals (add_tens "" value) (value mod 10)
;;

let convert value =
	print_string ((add_numerals "" value) ^ "\n") 
;;

(* 
Add this line to run as a command line executable:

	convert (int_of_string Sys.argv.(1));; 
*)
