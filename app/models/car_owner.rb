class CarOwner

  attr_reader :name

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  #class methods will always begin their def with self

  def self.all
    @@all
  end

  def cars
    #self is the oinstance of a carowner who called this function
    # select is a filter on a condition
    #[<CarObj>,<CarObj>,<CarObj>]
    Car.all.select do |car|
      car.owner == self
    end

  end

  def mechanics
    array_of_my_cars = self.cars()
    array_of_my_cars.map { |car_object| car_object.mechanic }
  end
  
  def mechanic_names
    self.mechanics().map {|mechanic| mechanic.name}
  end


  def cars_make_and_model
    self.cars().map do |car|
      "#{car.make} #{car.model}"
    end

    
  end

  def self.average_cars
    number_of_cars = Car.all.size
    number_of_owners = CarOwner.all.size
    number_of_cars.to_f / number_of_owners
  end

  # self.all
  # all
  # @@all
  # CarOwner.all  all ok to use in class method (above)
  





end
