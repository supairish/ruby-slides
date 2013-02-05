# IF/UNLESS equivalents

# If control structures
if x < 5 then
  statement1
end

if x < 5 then
  statement1
else
  statement2
end

if x < 5 then
  statement1
elsif x >= 5
  statement2
else
  statement3
end

statement1 if y == 3

x = if a > 0 then b else c end


# unless control structures
unless x >= 5 then
  statement1
end

unless x < 5 then
  statement2
else
  statement1
end

statement1 unless y != 3

x = unless a <= 0 then c else b end