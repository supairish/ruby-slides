# IF/UNLESS equivalents.  See if_unless_2.rb for unless equivalents.

# If control structures
if x < 5 then # then is optional
  statement1
end

if x < 5 then
  statement1
else
  statement2
end

statement1 if y == 3

x = if a > 0 then b else c end

# ternary example
x == 'a' ? statement1 : statement2

# if/elsif/else example
if x < 5 then
  statement1
elsif x >= 5
  statement2
else
  statement3
end