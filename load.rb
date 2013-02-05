require './say_hello.rb'  # require doesn't automatically include current path into load paths
require './say_hello.rb'  # require is smart to know not to double load the same ruby file

puts 'say_hello required once'

require_relative 'say_hello.rb' # require that has the current path in it's load paths

load 'say_hello.rb'
load 'say_hello.rb'       # load automatically as the current path in it's load paths
load 'say_hello.rb'       # isn't smart and doesn't know that we've already loaded say_hello multiple times

puts 'load loaded say_hello three times'