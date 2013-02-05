
puts 'Method name: '
meth_name = gets
puts 'Line of code: '
code = gets

string = "def #{meth_name}\n #{code}\n end"  # Build a string
eval(string)                                 # Define the method
puts eval(meth_name)                         # Call the method