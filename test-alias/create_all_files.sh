#!/bin/bash

DIR="0x03-shell_variables_expansions"

mkdir -p "$DIR"

declare -A files

files[6-create_local_variable]='#!/bin/bash
BEST="School"
'

files[7-create_global_variable]='#!/bin/bash
export BEST="School"
'

files[8-true_knowledge]='#!/bin/bash
echo $((128 + TRUEKNOWLEDGE))
'

files[9-divide_and_rule]='#!/bin/bash
echo $((POWER / DIVIDE))
'

files[10-love_exponent_breath]='#!/bin/bash
echo $((BREATH ** LOVE))
'

files[11-binary_to_decimal]='#!/bin/bash
echo $((2#$BINARY))
'

files[12-combinations]='#!/bin/bash
for i in {a..z};do for j in {a..z};do [[ $i$j == oo ]]||echo $i$j; done; done
'

files[13-print_float]='#!/bin/bash
printf "%.2f\n" "$NUM"
'

files[100-decimal_to_hexadecimal]='#!/bin/bash
printf "%x\n" "$DECIMAL"
'

files[101-rot13]='#!/bin/bash
tr \'A-Za-z\' \'N-ZA-Mn-za-m\'
'

files[102-odd]='#!/bin/bash
awk '\''NR % 2 == 1'\'' 
'

echo "Creating files in $DIR..."

for file in "${!files[@]}"; do
  echo "Creating $file"
  echo "${files[$file]}" > "$DIR/$file"
  chmod +x "$DIR/$file"
done

echo "Done. All files created with execute permissions."
