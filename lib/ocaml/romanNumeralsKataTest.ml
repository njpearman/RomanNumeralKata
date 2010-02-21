(* Unit tests for the Roman numerals kata *)
open OUnit
open RomanNumeralsKata

(* Definition of all tests *)
let test_fixture = "Roman numerals kata" >:::
[
	"should return '' for 0" >:: ( fun () -> 
		assert_equal "" (RomanNumeralsKata.to_numerals 0) );
	"should return I for 1" >:: ( fun () -> 
		assert_equal "I" (RomanNumeralsKata.to_numerals 1) );
	"should return II for 2" >:: ( fun () -> 
		assert_equal "II" (RomanNumeralsKata.to_numerals 2) );
	"should return III for 3" >:: ( fun () -> 
		assert_equal "III" (RomanNumeralsKata.to_numerals 3) );
	"should return IV for 4" >:: ( fun () -> 
		assert_equal "IV" (RomanNumeralsKata.to_numerals 4) );
	"should return V for 5" >:: ( fun () -> 
		assert_equal "V" (RomanNumeralsKata.to_numerals 5) );
	"should return VI for 6" >:: ( fun () -> 
		assert_equal "VI" (RomanNumeralsKata.to_numerals 6) );
	"should return VII for 7" >:: ( fun () -> 
		assert_equal "VII" (RomanNumeralsKata.to_numerals 7) );
	"should return VIII for 8" >:: ( fun () -> 
		assert_equal "VIII" (RomanNumeralsKata.to_numerals 8) );
	"should return IX for 9" >:: ( fun () -> 
		assert_equal "IX" (RomanNumeralsKata.to_numerals 9) );
	"should return X for 10" >:: ( fun () -> 
		assert_equal "X" (RomanNumeralsKata.to_numerals 10) );
	"should return XI for 11" >:: ( fun () -> 
		assert_equal "XI" (RomanNumeralsKata.to_numerals 11) );
	"should return XII for 12" >:: ( fun () -> 
		assert_equal "XII" (RomanNumeralsKata.to_numerals 12) );
	"should return XXIII for 23" >:: ( fun () -> 
		assert_equal "XXIII" (RomanNumeralsKata.to_numerals 23) );
	"should return XXXIV for 34" >:: ( fun () -> 
		assert_equal "XXXIV" (RomanNumeralsKata.to_numerals 34) );
	"should return XLV for 45" >:: ( fun () -> 
		assert_equal "XLV" (RomanNumeralsKata.to_numerals 45) );
	"should return LVI for 56" >:: ( fun () -> 
		assert_equal "LVI" (RomanNumeralsKata.to_numerals 56) );
	"should return LXVII for 67" >:: ( fun () -> 
		assert_equal "LXVII" (RomanNumeralsKata.to_numerals 67) );
	"should return LXXVIII for 78" >:: ( fun () -> 
		assert_equal "LXXVIII" (RomanNumeralsKata.to_numerals 78) );
	"should return LXXXIX for 89" >:: ( fun () -> 
		assert_equal "LXXXIX" (RomanNumeralsKata.to_numerals 89) );
	"should return XC for 90" >:: ( fun () -> 
		assert_equal "XC" (RomanNumeralsKata.to_numerals 90) );
]

(* Run the tests! *)
let _ = run_test_tt ~verbose:true test_fixture

