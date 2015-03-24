class Student
   def initialize(name, grade)
    @name = name
    @grade = grade
  end
 
  def better_grade_than?(name)
    self.grade < name.grade
  end
 
  protected
 
  attr_reader :grade
end

zelda = Student.new("Zelda", "A")
thom = Student.new("Thom", "B")
puts "Well done!" if zelda.better_grade_than?(thom)


