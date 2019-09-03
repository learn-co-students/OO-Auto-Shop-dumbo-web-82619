class Car

  attr_reader :make, :model, :mechanic, :owner, :classification
  @@all = []


  def initialize(mechanic, owner, make, model, classification)
    @mechanic = mechanic
    @owner = owner
    @make = make
    @model = model
    @classification = classification
    @@all << self
  end

  def self.all
    @@all
  end
  
  def self.all_classifications
    Car.all.map {|car_instance| car_instance.classification}
  end

  def find_mechanics
    Mechanic.all.select do |mechanic|
      mechanic.specialty == self.classification
  #could also use == @classification because c is in car.rb
    end
    
    # def list_of_mechanics
    #   self.find_mechanics.map do |mechanic|
    #      "#{mechanic.name}"
    #   end

    # end

  end









  # def
  # array_of_classifications = self.all_classifications()

  
end
  