(* Unit tests for the Roman numerals kata *)
open OUnit
open RomanNumeralsKata

(* Definition of all tests *)
let test_fixture = "Roman numerals kata" >:::
[
	"should return I for 1" >:: ( fun () -> 
		assert_equal "I" (RomanNumeralsKata.to_numerals 1) );
]

(* Run the tests! *)
let _ = run_test_tt ~verbose:true test_fixture
