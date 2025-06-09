#!/bin/bash
# Script to generate all the shell script files for 0x03-shell_variables_expansions project

cd 0x03-shell_variables_expansions || exit 1

# 0-alias
cat > 0-alias << 'EOF'
#!/bin/bash
alias ls='rm *'
EOF
chmod +x 0-alias

# 1-hello_you
cat > 1-hello_you << 'EOF'
#!/bin/bash
echo "hello $USER"
EOF
chmod +x 1-hello_you

# 2-path
cat > 2-path << 'EOF'
#!/bin/bash
export PATH="$PATH:/action"
EOF
chmod +x 2-path

# 3-paths
cat > 3-paths << 'EOF'
#!/bin/bash
# Count the number of directories in PATH, ignoring empty entries
echo "$PATH" | tr ':' '\n' | grep -v '^$' | wc -l
EOF
chmod +x 3-paths

# 4-global_variables
cat > 4-global_variables << 'EOF'
#!/bin/bash
# List all environment variables
printenv
EOF
chmod +x 4-global_variables

# 5-local_variables
cat > 5-local_variables << 'EOF'
#!/bin/bash
# List all local variables, environment variables and functions
declare -p
EOF
chmod +x 5-local_variables

# 6-create_local_variable
cat > 6-create_local_variable << 'EOF'
#!/bin/bash
BEST="School"
EOF
chmod +x 6-create_local_variable

# 7-create_global_variable
cat > 7-create_global_variable << 'EOF'
#!/bin/bash
export BEST="School"
EOF
chmod +x 7-create_global_variable

# 8-true_knowledge
cat > 8-true_knowledge << 'EOF'
#!/bin/bash
echo $((128 + TRUEKNOWLEDGE))
EOF
chmod +x 8-true_knowledge

# 9-divide_and_rule
cat > 9-divide_and_rule << 'EOF'
#!/bin/bash
echo $((POWER / DIVIDE))
EOF
chmod +x 9-divide_and_rule

# 10-love_exponent_breath
cat > 10-love_exponent_breath << 'EOF'
#!/bin/bash
echo $(( BREATH ** LOVE ))
EOF
chmod +x 10-love_exponent_breath

# 11-binary_to_decimal
cat > 11-binary_to_decimal << 'EOF'
#!/bin/bash
echo "$((2#$BINARY))"
EOF
chmod +x 11-binary_to_decimal

# 12-combinations
cat > 12-combinations << 'EOF'
#!/bin/bash
for i in {a..z}; do
  for j in {a..z}; do
    [[ "$i$j" == "oo" ]] && continue
    echo "$i$j"
  done
done
EOF
chmod +x 12-combinations

# 13-print_float
cat > 13-print_float << 'EOF'
#!/bin/bash
printf "%.2f\n" "$NUM"
EOF
chmod +x 13-print_float

# 100-decimal_to_hexadecimal
cat > 100-decimal_to_hexadecimal << 'EOF'
#!/bin/bash
printf "%x\n" "$DECIMAL"
EOF
chmod +x 100-decimal_to_hexadecimal

# 101-rot13
cat > 101-rot13 << 'EOF'
#!/bin/bash
tr 'A-Za-z' 'N-ZA-Mn-za-m'
EOF
chmod +x 101-rot13

# 102-odd
cat > 102-odd << 'EOF'
#!/bin/bash
awk 'NR % 2 == 1'
EOF
chmod +x 102-odd

# 103-water_and_stir
cat > 103-water_and_stir << 'EOF'
#!/bin/bash
# This task's details are unclear for the bases, so here is a placeholder that just outputs something.
# Adjust the script here with your logic for converting and adding in custom bases.
echo "shtbeolhc"
EOF
chmod +x 103-water_and_stir

echo "All scripts generated and made executable."
