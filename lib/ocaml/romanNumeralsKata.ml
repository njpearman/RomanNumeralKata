(* First step in making an OCAML Roman numeral converter *)
let empty = "";;
let i = "I";;
let v = "V";;
let x = "X";;
let l = "L";;
let c = "C";;
let d = "D";;
let m = "M";;

let rec add numeral total value =
	match value with
  	| 0 -> total
  	| x -> add numeral (total ^ numeral) (value - 1)
;;

let base_of value modulus = (value mod modulus) / (modulus / 10);;

let shift_numerals numeral_list = List.tl (List.tl numeral_list);;

let rec add_numerals_of_order order value numeral_set total =
	match order with
	| 1 -> total
	| x -> 	let higher_order_numeral = List.nth numeral_set 0 in
		let mid_point_numeral = List.nth numeral_set 1 in
		let unit_numeral = List.nth numeral_set 2 in
		let based_value = base_of value order in
		let add_numerals =
			match (based_value) with
			| 9 -> total ^ unit_numeral ^ higher_order_numeral
			| 8 | 7 | 6 -> add unit_numeral (total ^ mid_point_numeral) (based_value - 5)
			| 5 -> total ^ mid_point_numeral
			| 4 -> total ^ unit_numeral ^ mid_point_numeral
			| x -> add unit_numeral total based_value
		in
		add_numerals_of_order (order / 10) value (shift_numerals numeral_set) add_numerals
;;

let rec add_thousands total value = 
	match (value) with
	| 0 -> total
	| x -> add_thousands (total ^ m) (value - 1)
;;

let to_numerals value = add_numerals_of_order 1000 value [m;d;c;l;x;v;i] (add_thousands empty (value / 1000))

let convert value = print_string ((to_numerals value) ^ "\n");;

(* 
Add this line to run as a command line executable:

	convert (int_of_string Sys.argv.(1));; 
*)
