# The problem is that hi the method is private. You can either remove its designation as private or access the method from within the class, as below:

class Person
  def initialize
    puts "#{hi}"
  end
 
  private
 
  def hi
    "Sup!"
  end
end

bob = Person.new
