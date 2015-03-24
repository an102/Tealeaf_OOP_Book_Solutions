class MyCar
  attr_accessor :speed, :color
  attr_reader :year

  def initialize(color, year, model)
    self.color = color
    @year = year
    @model = model
    self.speed = 0
  end
  
  def to_s
    "#{@color.capitalize} #{@year} #{@model}"
  end
  
  def mileage(miles_on_full_tank, capacity)
    puts "The #{@year} #{@model} has a gas milage of #{miles_on_full_tank / capacity} miles per gallon."
  end
  
  def spray_paint(color)
    self.color = color
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
move.mileage(100, 20)
puts move