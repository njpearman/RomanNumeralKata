(* First step in making an OCAML Roman numeral converter *)

open Array;;

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

let add_numerals (first, second, third) total value =
	match value with
	| 9 -> total ^ first ^ third
	| 8 | 7 | 6 -> add first (total ^ second) (value - 5)
	| 5 -> total ^ second
	| 4 -> total ^ first ^ second
	| x -> add first total value
;;

let base value modulus = (value mod modulus) / (modulus / 10);;

let add_units total value = add_numerals (i,v,x) total (base value 10);;

let add_tens total value = add_numerals (x,l,c) total (base value 100);;

let add_hundreds total value = add_numerals (c, d, m) total (base value 1000);;

let shift_numerals numeral_list =
	List.tl (List.tl numeral_list)
;;

let add_numerals_of_order order value numeral_set total =
	let higher_order_numeral = List.nth numeral_set 0 in
	let mid_point_numeral = List.nth numeral_set 1 in
	let unit_numeral = List.nth numeral_set 2 in
	let based_value =
		base value order
	in
	match (based_value) with
	| 9 -> total ^ unit_numeral ^ higher_order_numeral
	| 8 | 7 | 6 -> add unit_numeral (total ^ mid_point_numeral) (based_value-5)
	| 5 -> total ^ mid_point_numeral
	| 4 -> total ^ unit_numeral ^ mid_point_numeral
	| x -> add unit_numeral total based_value
;;

let rec add_thousands total value = 
	match (value) with
	| 0 -> total
	| x -> add_thousands (total ^ m) (value - 1)
;;

let to_numerals value = add_numerals_of_order 10 value [x;v;i] (add_tens (add_hundreds (add_thousands empty (value / 1000) ) value) value);;

let convert value = print_string ((add_units empty value) ^ "\n");;

(* 
Add this line to run as a command line executable:

	convert (int_of_string Sys.argv.(1));; 
*)
