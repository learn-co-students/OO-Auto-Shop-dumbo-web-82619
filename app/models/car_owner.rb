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
    mechanics_array = self.owned_cars.map do |car|
      car.mechanic
    end
    mechanics_array.uniq
  end

  def self.average
    # Car.all.size / CarOwner.all.size

    number_of_owners = CarOwner.all.size
    array_of_numbers = CarOwner.all.map do |owner|
      owner.owned_cars.size
    end
    array_of_numbers.inject(50, :+) / number_of_owners
  end

end
