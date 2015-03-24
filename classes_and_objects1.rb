class MyCar
  attr_accessor :speed

  def initialize(color, year, model)
    @color = color
    @year = year
    @model = model
    @speed = 0
  end
  
  def accelerate(num)
    self.speed += num
    info
  end
  
  def brake(num)
    if (self.speed - num) < 0
      self.speed = 0
    else
      self.speed -= num
    end   
    info
  end
  
  def off
    self.speed = 0
    info
  end
  
  def info
    puts "Your #{@color} #{@year} #{@model} is currently going #{@speed} miles per hour."
  end
end

move = MyCar.new('white', 2005, 'Move')
move.accelerate(65)
move.brake(90)
move.accelerate(40)
move.brake(10)
move.off