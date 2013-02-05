list = %w[alpha bravo charlie delta echo]

# Loop 1 (while), pretest loop
i = 0
while i < list.size do
  print "#{ list[i] }"
  i += 1
end

# Loop 2 (until), pretest loop
i = 0
until i == list.size do
  print "#{ list[i] }"
  i += 1
end

# Loop 3 (for).  Most 'Proper'
for x in list do
  print "#{ x }"
end

# Loop 4 ('each' iterator).  Most 'Proper'
list.each do |x|
  print "#{ x }"
end

# Loop 5 ('loop' method)
i = 0
n = list.size - 1
loop do # 'loop' loops infinitely
  print "#{ list[i] }"
  i += 1
  break if i > n # break out of loop
end

# Loop 6 ('loop' method)
i = 0
n = list.size - 1
loop do
  print "#{ list[i] }"
  i += 1
  break unless i <= n
end

# Loop 7 ('times' iterator)
n = list.size
n.times do |i|
  print "#{ list[i] }"
end

# Loop 8 ('upto' iterator)
n = list.size - 1
0.upto(n) do |i|
  print "#{ list[i] }"
end

# Loop 9 (for)
n = list.size - 1
for i in 0..n do
  print "#{ list[i] }"
end

# Loop 10 ('each_index')
list.each_index do |x|
  print "#{ list[x] }"
end



