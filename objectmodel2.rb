# A module is a means of providing classes with methods

module Cheer
  def cheer 
    puts "Yo!" 
  end
end
 
class SuperScope
  include Cheer
end

a = SuperScope.new

a.cheer