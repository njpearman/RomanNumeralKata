#!/bin/sh
ocamlc -o kata.run romanNumeralsKata.ml 
ocamlfind ocamlc -c -linkpkg -package oUnit romanNumeralsKataTest.ml 
ocamlfind ocamlc -o tests.run -linkpkg -package oUnit romanNumeralsKata.cmo romanNumeralsKataTest.cmo
echo Successfully built all.  Time to test..
./tests.run
