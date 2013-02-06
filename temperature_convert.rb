# also posted here "https://gist.github.com/supairish/4716238"

class Converter
  def self.convert_temp
    print "Please enter a temperature and scale (C or F): "
    str = gets

    exit if str.nil? or str.empty?  # exit is a call to a method that terminates the program.
                                    # in Ruby on false and nil or boolean false, everything else is true

    str.chomp!                      # bang form warns us that the operation actually changes the value of its receiver
                                    # rather than just returning a value

    temp, scale = str.split(" ")    # multiple assignment

                                    # no variable declarations. In Ruby data have types, variables do not.
                                    # variables spring into existence as soon as the interpreter sees an assignment to that variable

    abort "#{temp} is not a valid number." if temp !~ /-?\d+/   # if-modifier, can't use an 'else'

    temp = temp.to_f                # change string to float

    case scale
      when "C", 'c'                 # case be any datatype, i.e. Ranges, RegExps, Strings, Objects
        f = 1.8 * temp + 32
      when "F", 'f'
        c = (5.0 / 9.0) * (temp - 32)
    else
      abort "Must specify C or F"
    end

    if f.nil?                       # which case branch was true?
      print "#{c} degrees C\n"
      "#{c} degrees C\n"            # only added for test because return value of print is nil.
    else                            # probably would be better to put into a variable and return
      print "#{f} degrees F\n"      # that through a getter/setter
      "#{f} degrees F\n"
    end
  end
end

# Converter.convert_temp()

# Please enter a temperature and scale (C or F): 32 F
# 0.0 degrees C

# Please enter a temperature and scale (C or F): 32F
# Must specify C or F

# Please enter a temperature and scale (C or F): AF
# AF is not a valid number.

# Please enter a temperature and scale (C or F): 100 C
# 212.0 degrees F