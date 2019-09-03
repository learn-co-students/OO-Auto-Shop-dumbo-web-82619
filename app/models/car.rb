class Car

  # attr_reader :make, :model
  attr_reader :owner, :classification, :mechanic

  @@all = []

  def initialize(classification, owner, mechanic)
    # @make = make
    # @model = model
    @owner = owner
    @classification = classification
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    c = self.all.map do |car|
      car.classification
    end
    c.uniq
  end

  def mechanics
    Mechanic.all.select do |mechanic|
      mechanic.specialty == self.classification
    end
  end

end
