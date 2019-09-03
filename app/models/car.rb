class Car

  # attr_reader :make, :model
  attr_reader :classification, :owner, :mechanic
  @@all = []

  def initialize(classification, owner, mechanic)
    # @make = make
    # @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    not_unique = Car.all.map do |car|
      car.classification
    end
    not_unique.uniq
  end

  def mechanics
    Mechanic.all.select do |mechanic|
      mechanic.specialty == self.classification
    end
  end
end
