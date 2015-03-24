class Vehicle
  attr_accessor :color, :year, :model
  
  @@number_of_vehicles = 0
  
  def initialize(color, year, model)
    self.color = color
    self.year = year
    self.model = model
    @@number_of_vehicles += 1
    info
  end
  
  def self.total_vehicles
    puts @@number_of_vehicles
  end

  def self.drives
    puts "This thing drives!"
  end
  
  def info
    puts "Your vehicle is a #{self.color} #{self.year} #{self.model}. It is about #{age} years old."
  end
  
  private
  
  def age
    Time.now.year - self.year
  end
end

module FitsInGarage
  def fits_in_garage
    puts "This fits in the garage."
  end
end

class MyCar < Vehicle

  SIZE = "smallish"
 
  include FitsInGarage
  
  def size
    SIZE
  end
end

class MyTruck < Vehicle
   
  SIZE = "huge!"
  
  def size
    SIZE
  end
end

car = MyCar.new("green", 1991, "Mustang")
truck = MyTruck.new("blue", 1987, "Explorer")
Vehicle.total_vehicles
puts car.size
puts truck.size
car.fits_in_garage

puts car.age

