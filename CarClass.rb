class Car
  attr_accessor :color, :model, :make, :year, :type
  def initialize (color, model, make, year, type)
    @color = color
    @model = model
    @make = make
    @year = year
    @type = type
  end
end

car = Car.new('red', 'honda', 'civic', '2012', 'sedan')
puts car.make
