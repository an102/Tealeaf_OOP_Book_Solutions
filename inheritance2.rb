class Vehicle
  @@number_of_vehicles = 0
  
  def initialize
    @@number_of_vehicles =+ 1
  end
  
  def self.total_vehicles
    puts @@number_of_vehicles
  end

  def self.drives
    puts "This thing drives!"
  end
end


class MyCar < Vehicle
  attr_accessor :color, :year, :model

  SIZE = "smallish"
 
  
  def size
    SIZE
  end
 
  def initialize(color, year, model)
    self.color = color
    self.year = year
    self.model = model
    @@number_of_vehicles += 1
  end
 
  def info
    puts "Your car is a #{self.color} #{self.year} #{self.model}."
  end
end

class MyTruck < Vehicle
   
  SIZE = "huge!"

  def initialize
    @@number_of_vehicles += 1
  end
  
  def size
    SIZE
  end
end

car = MyCar.new("green", 1991, "Mustang")
car.info
MyCar.drives
MyTruck.drives
truck = MyTruck.new
puts car.size
puts truck.size

Vehicle.total_vehicles
