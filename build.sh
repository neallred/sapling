#!/bin/bash

set -e

static_root="./"
js="tmp.js"
min="$static_root/app.js"
min_tmp_gzip="$static_root/app_tmp_for_gzip.js"
min_tmp_gzipped="$static_root/app_tmp_for_gzip.js.gz"
min_gzip="$static_root/app.js.gz"

elm make --optimize --output=$js src/Main.elm $@

./node_modules/.bin/uglifyjs $js --compress 'pure_funcs="F2,F3,F4,F5,F6,F7,F8,F9,A2,A3,A4,A5,A6,A7,A8,A9",pure_getters,keep_fargs=false,unsafe_comps,unsafe' | ./node_modules/.bin/uglifyjs --mangle --output=$min

cp $min $min_tmp_gzip
gzip $min_tmp_gzip
mv $min_tmp_gzipped $min_gzip

echo "Compiled size: $(cat $js | wc -c) bytes  ($js)"
echo "Minified size: $(cat $min | wc -c) bytes  ($min)"
echo "Gzipped size:  $(cat $min | gzip -c | wc -c) bytes"

rm $js
