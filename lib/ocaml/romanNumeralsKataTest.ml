(* Unit tests for the Roman numerals kata *)
open OUnit
open RomanNumeralsKata

(* Definition of all tests *)
let test_fixture = "Roman numerals kata" >:::
[
	"should return '' for 0" >:: ( fun () -> 
		assert_equal "" (RomanNumeralsKata.convert 0) );
	"should return I for 1" >:: ( fun () -> 
		assert_equal "I" (RomanNumeralsKata.convert 1) );
	"should return II for 2" >:: ( fun () -> 
		assert_equal "II" (RomanNumeralsKata.convert 2) );
	"should return III for 3" >:: ( fun () -> 
		assert_equal "III" (RomanNumeralsKata.convert 3) );
	"should return IV for 4" >:: ( fun () -> 
		assert_equal "IV" (RomanNumeralsKata.convert 4) );
	"should return V for 5" >:: ( fun () -> 
		assert_equal "V" (RomanNumeralsKata.convert 5) );
	"should return VI for 6" >:: ( fun () -> 
		assert_equal "VI" (RomanNumeralsKata.convert 6) );
	"should return VII for 7" >:: ( fun () -> 
		assert_equal "VII" (RomanNumeralsKata.convert 7) );
	"should return VIII for 8" >:: ( fun () -> 
		assert_equal "VIII" (RomanNumeralsKata.convert 8) );
	"should return IX for 9" >:: ( fun () -> 
		assert_equal "IX" (RomanNumeralsKata.convert 9) );
	"should return X for 10" >:: ( fun () -> 
		assert_equal "X" (RomanNumeralsKata.convert 10) );
	"should return XI for 11" >:: ( fun () -> 
		assert_equal "XI" (RomanNumeralsKata.convert 11) );
	"should return XXII for 223" >:: ( fun () -> 
		assert_equal "XXII" (RomanNumeralsKata.convert 22) );
	"should return XXXIII for 33" >:: ( fun () -> 
		assert_equal "XXXIII" (RomanNumeralsKata.convert 33) );
	"should return XILV for 44" >:: ( fun () -> 
		assert_equal "XLIV" (RomanNumeralsKata.convert 44) );
	"should return LV for 55" >:: ( fun () -> 
		assert_equal "LV" (RomanNumeralsKata.convert 55) );
	"should return LXVI for 66" >:: ( fun () -> 
		assert_equal "LXVI" (RomanNumeralsKata.convert 66) );
	"should return LXXVII for 77" >:: ( fun () -> 
		assert_equal "LXXVII" (RomanNumeralsKata.convert 77) );
	"should return LXXXVIII for 88" >:: ( fun () -> 
		assert_equal "LXXXVIII" (RomanNumeralsKata.convert 88) );
	"should return XCIX for 99" >:: ( fun () -> 
		assert_equal "XCIX" (RomanNumeralsKata.convert 99) );
	"should return C for 100" >:: ( fun () ->
		assert_equal "C" (RomanNumeralsKata.convert 100) );
	"should return CCXXII for 222" >:: ( fun () ->
		assert_equal "CCXXII" (RomanNumeralsKata.convert 222) );
	"should return CCCXXXIII for 333" >:: ( fun () ->
		assert_equal "CCCXXXIII" (RomanNumeralsKata.convert 333) );
	"should return CDXLIV for 444" >:: ( fun () ->
		assert_equal "CDXLIV" (RomanNumeralsKata.convert 444) );
	"should return DLV for 555" >:: ( fun () ->
		assert_equal "DLV" (RomanNumeralsKata.convert 555) );
	"should return DCLXVI for 666" >:: ( fun () ->
		assert_equal "DCLXVI" (RomanNumeralsKata.convert 666) );
	"should return DCCLXXVII for 777" >:: ( fun () ->
		assert_equal "DCCLXXVII" (RomanNumeralsKata.convert 777) );
	"should return DCCCLXXXVIII for 888" >:: ( fun () ->
		assert_equal "DCCCLXXXVIII" (RomanNumeralsKata.convert 888) );
	"should return CMXCIX for 999" >:: ( fun () ->
		assert_equal "CMXCIX" (RomanNumeralsKata.convert 999) );
	"should return MCXI for 1111" >:: ( fun () ->
		assert_equal "MCXI" (RomanNumeralsKata.convert 1111) );
	"should return MMCCXXII for 2222" >:: ( fun () ->
		assert_equal "MMCCXXII" (RomanNumeralsKata.convert 2222) );
	"should return MMMCCCXXXIII for 3333" >:: ( fun () ->
		assert_equal "MMMCCCXXXIII" (RomanNumeralsKata.convert 3333) );
	"should return MMMMCDXLIV for 4444" >:: ( fun () ->
		assert_equal "MMMMCDXLIV" (RomanNumeralsKata.convert 4444) );
	"should return MMMMMDLV for 5555" >:: ( fun () ->
		assert_equal "MMMMMDLV" (RomanNumeralsKata.convert 5555) );
]

(* Run the tests! *)
let _ = run_test_tt ~verbose:true test_fixture

