#!/bin/sh
ocamlc -o kata.run romanNumeralsKata.ml 
ocamlfind ocamlc -c -linkpkg -package oUnit roman_numerals_kata_test.ml 
ocamlfind ocamlc -o tests.run -linkpkg -package oUnit romanNumeralsKata.cmo roman_numerals_kata_test.cmo
