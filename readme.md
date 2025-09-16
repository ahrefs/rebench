# Rexgexp benchmark

This compares Pcre with Pcre2 and Re.

The benchmark were done on a Thinkpad from 2024 with an Intel Ultra 7 and 32GB
of ram.

I first generated a large file (239M) with reoccuring pattern `$$//$$` appearing
50 000 times. Code for that can be found in `bin/gen.ml`. The file is not
included because it exceed github's size limit.

Then I tested splitting and replacing, a 1000 times each.

I got the following results:

## Pcre
split: 58.065355
replace: 62.342115

with  `~study:true` and `~jit_compile:true`:
split: 18.949022
replace: 20.299579

## Pcre2
split: 16.756501
replace: 18.157539

## Re
split: 242.511451
replace: 328.344440