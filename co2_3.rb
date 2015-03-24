class Person

  attr_writer :name
  
  def initialize(name)
    @name = name
  end
  
  def printer
    puts "This guy is #{@name}."
  end
end

bob = Person.new("Steve")
bob.name = "Bob"
bob.printer

# The problem was that the attr_reader getter was used instead of attr_writer or attr_accessor setter.