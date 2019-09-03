class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def owned_cars
    Car.all.select do |car|
      car.owner == self
    end
  end

  def mechanics
    mechanics = self.owned_cars.map do |car|
      car.mechanic
    end
    mechanics.uniq
  end

  def self.average
    Car.all.size.to_f / CarOwner.all.size
  end

end
