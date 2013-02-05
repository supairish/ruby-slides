# Special kind of string; backticks let you shell out commands
puts `whoami`
puts `ls -l`
puts %x[grep -i head *.html | wc -l]

# shortcut for array of strings, can use any delimiter
puts %w[one two three]
puts %w(four five)
puts %w|six seven|
