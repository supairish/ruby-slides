class MyClass
  NAME    = 'Class Name'  # class constant
  @@count = 0             # initialize a class variable

  def initialize
    @@count += 1
    @myvar = 10
  end

  def MyClass.getcount  # class method, could have just used self.
    @@count             # class variable
  end

  def getcount  # instance returns class variable!
    @@count     # class variable
  end

  def getmyvar  # instance method
    @myvar      # instance variable
  end

  def setmyvar( val ) # instance method sets @myvar
    @myvar = val
  end

  def myvar=(val) # Another way to set @myvar
    @myvar = val
  end
end

# NOTE: instance variables are always private and inaccessible
# from outside the class except by means of accessors

puts MyClass::NAME

puts foo = MyClass.new
puts MyClass.getcount

puts foo.getmyvar      # @myvar is 10
puts foo.setmyvar 20   # @myvar is 20
puts foo.myvar = 30    # @myvar is 30