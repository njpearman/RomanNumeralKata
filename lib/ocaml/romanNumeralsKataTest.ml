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
	"should return XXII for 223" >:: ( fun () -> 
		assert_equal "XXII" (RomanNumeralsKata.to_numerals 22) );
	"should return XXXIII for 33" >:: ( fun () -> 
		assert_equal "XXXIII" (RomanNumeralsKata.to_numerals 33) );
	"should return XILV for 44" >:: ( fun () -> 
		assert_equal "XLIV" (RomanNumeralsKata.to_numerals 44) );
	"should return LV for 55" >:: ( fun () -> 
		assert_equal "LV" (RomanNumeralsKata.to_numerals 55) );
	"should return LXVI for 66" >:: ( fun () -> 
		assert_equal "LXVI" (RomanNumeralsKata.to_numerals 66) );
	"should return LXXVII for 77" >:: ( fun () -> 
		assert_equal "LXXVII" (RomanNumeralsKata.to_numerals 77) );
	"should return LXXXVIII for 88" >:: ( fun () -> 
		assert_equal "LXXXVIII" (RomanNumeralsKata.to_numerals 88) );
	"should return XCIX for 99" >:: ( fun () -> 
		assert_equal "XCIX" (RomanNumeralsKata.to_numerals 99) );
	"should return C for 100" >:: ( fun () ->
		assert_equal "C" (RomanNumeralsKata.to_numerals 100) );
	"should return CCXXII for 222" >:: ( fun () ->
		assert_equal "CCXXII" (RomanNumeralsKata.to_numerals 222) );
	"should return CCCXXXIII for 333" >:: ( fun () ->
		assert_equal "CCCXXXIII" (RomanNumeralsKata.to_numerals 333) );
	"should return CDXLIV for 444" >:: ( fun () ->
		assert_equal "CDXLIV" (RomanNumeralsKata.to_numerals 444) );
	"should return DLV for 555" >:: ( fun () ->
		assert_equal "DLV" (RomanNumeralsKata.to_numerals 555) );
	"should return DCLXVI for 666" >:: ( fun () ->
		assert_equal "DCLXVI" (RomanNumeralsKata.to_numerals 666) );
	"should return DCCLXXVII for 777" >:: ( fun () ->
		assert_equal "DCCLXXVII" (RomanNumeralsKata.to_numerals 777) );
	"should return DCCCLXXXVIII for 888" >:: ( fun () ->
		assert_equal "DCCCLXXXVIII" (RomanNumeralsKata.to_numerals 888) );
	"should return CMXCIX for 999" >:: ( fun () ->
		assert_equal "CMXCIX" (RomanNumeralsKata.to_numerals 999) );
]

(* Run the tests! *)
let _ = run_test_tt ~verbose:true test_fixture

