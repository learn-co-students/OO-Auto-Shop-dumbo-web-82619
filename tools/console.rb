require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

karina = CarOwner.new("Karina")
benny = CarOwner.new("Benny")

aibek = Mechanic.new("Aibek", "new")
theresa = Mechanic.new("Theresa", "foreign")
liz = Mechanic.new("Liz", "old")
tom = Mechanic.new("Tom", "foreign")


car1 = Car.new("old", karina, aibek)
car2 = Car.new("new", karina, theresa)
car3 = Car.new("retro", benny, theresa)
car4 = Car.new("foreign", karina, theresa)
car5 = Car.new("new", benny, aibek)
binding.pry
0
