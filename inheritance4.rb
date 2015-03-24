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

module FitsInGarage
  def fits_in_garage
    puts "This fits in the garage."
  end
end

class MyCar < Vehicle
  attr_accessor :color, :year, :model

  SIZE = "smallish"
 
  include FitsInGarage
  
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

puts "--- class Vehicle method lookup ---"
puts Vehicle.ancestors
puts "--- class MyCar method lookup ---"
puts MyCar.ancestors
puts "--- class MyTruck method lookup ---"
puts MyTruck.ancestors