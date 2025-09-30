echo "pcre2"
dune exec --profile=release bin/pcre2.exe $1
echo "pcre"
dune exec --profile=release bin/pcre.exe $1
echo "re"
dune exec --profile=release bin/re.exe $1
echo "re2"
dune exec --profile=release bin/re2.exe $1
