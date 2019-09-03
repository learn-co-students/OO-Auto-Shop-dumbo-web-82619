require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

karina = CarOwner.new("Karina")
benny = CarOwner.new("Benny")

aibek = Mechanic.new("Aibek", "new")
theresa = Mechanic.new("Theresa", "foreign")
dan = Mechanic.new("Dan", "new")
leizl = Mechanic.new("Leizl", "foreign")

car1 = Car.new("old", karina, aibek)
car2 = Car.new("new", karina, theresa)
car3 = Car.new("retro", karina, theresa)
car4 = Car.new("foreign", benny, theresa)
car5 = Car.new("foreign", benny, theresa)

binding.pry
