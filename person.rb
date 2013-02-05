class Person
  attr_accessor :name

  def name
    @name
  end

  def name=(val)
    @name = val
  end

  def greet
    puts 'instance greet'
  end

  def self.greet
    puts 'class greet'
  end
end

chris = Person.new
chris.greet           # instance method call
Person.greet          # class method call