#
# Story: As a programmer, I can make a vehicle.
# Hint: Create a class called Vehicle, and create a variable called my_vehicle which contains an object of class Vehicle.

#
# Story: As a programmer, I can turn on and off the lights on a given Vehicle.



class Vehicle
  attr_accessor :year, :model, :wheels, :lightstatus, :speed, :signalstatus

 def initialize(year, model)
   @year = year
   @model = model
   @lightstatus = "off"
   @signalstatus = "off"
   @speed = 0
 end
 # Story: As a programmer, I can call upon a car to tell me all it's information.
 # Hint: Implement to_s on one or more classes. You can call a super class's to_s with super.

 def info
   infoarray = ["Year: #{@year}", "Make: #{@make}", "Model: #{@model}", "Lights: #{@lightstatus}", "Singals: #{@signalstatus}",  "Speed: #{@speed}"]
   p infoarray
 end



 # Hint: Create method(s) to allow programmer to turn lights on and off. Which class are the methods in?

 def lights(x)
   if x == "on"
     @lightstatus = "on"
   elsif x == "off"
     @lightstatus = "off"
   else
     p "Type lights(on) or lights(off)"
   end
 end
 # Story: As a programmer, I can signal left and right. Turn signals starts off.

 def signal(x)
  if x == "left"
    @signalstatus = "left"
  elsif x == "right"
    @signalstatus = "right"
  end
end
# Story: As a programmer, I can determine the speed of a car. Speed starts at 0 km/h.
  def accelerate
    @speed = @speed + @accelerator
  end

  def brake
    @speed = @speed - @decelerator
    #if speed is negative, make speed 0:
    if @speed <0
      @speed = 0
    end
  end
end


my_vehicle = Vehicle.new(2018, "Horse")

#
# Story: As a programmer, I can make a car.
# Hint: Create a class called Car, and create a variable called my_car which contains an object of class Car.

# Story: As a programmer, I can tell how many wheels a car has; default is four.
# Hint: initialize the car to have four wheels, then create a method to return the number of wheels.

class Car < Vehicle
  def initialize(year, model)
    super(year, model)
    @wheels = 4
  end
end

my_car = Car.new(2010, "Camery")

# Story: As a programmer, I can make a Tesla car.
# Hint: Create an variable called my_tesla which is of class Tesla which inherits from class Car.

class Tesla < Car
  def initialize(year, model)
    super(year,model)
    @Make = "Tesla"
    @accelerator = 10
    @decelerator = 7
  end
end

# Story: As a programmer, I can make a Tata car.
#
# Story: As a programmer, I can make a Toyota car.
class Tata < Car
  def initialize(year, model)
    super(year, model)
    @make = "Tata"
    @accelerator = 2
    @decelerator = 1.25
  end
end


class Toyota < Car
  def initialize(year, model)
    super(year, model)
    @make = "Toyota"
    @accelerator = 7
    @decelerator = 5
  end
end

my_tata = Tata.new(1972, "Clunker")
my_tata2 = Tata.new(2875, "Clunker")
my_toyota = Toyota.new(2009, "Camry")
my_toyota2 = Toyota.new(1745, "Mamry")
my_tesla = Tesla.new(2052, "x")
my_tesla2 = Tesla.new(2020, "x")

cars = [my_tata, my_tata2, my_toyota, my_toyota2, my_tesla, my_tesla2]
cars_by_year = cars.sort_by { |element| element.year}


# cars_by_year.each() do |element|
#    element.info
#  end

cars_by_model = cars.sort_by { |element| element.model}

# cars_by_model.each() do |element|
#   element.info
# end

cars_by_model_then_year = cars.sort_by { |element| [element.model, element.year]}

cars_by_model_then_year.each() do |element|
  element.info
end
# Story: As a programmer, I can tell which model year a vehicle is from. Model years never change.


# p my_tesla.model
# p my_tesla.wheels
# p my_tesla.lightstatus
# my_tesla.lights("on")
# p my_tesla.lightstatus
# my_tesla.lights("gibberish")
# p my_tesla.signalstatus
# my_tesla.signal("left")
# p my_tesla.signalstatus
# p my_tesla.speed
# my_tesla.accelerate
# p my_tesla.speed
# my_tesla.brake
# p my_tesla.speed
# my_tesla.brake
# p my_tesla.speed
# my_tesla.brake
# p my_tesla.speed

# p my_tata.speed
# p my_toyota.speed
# my_tata.accelerate
# my_toyota.accelerate
# p my_tata.speed
# p my_toyota.speed
# my_tata.brake
# my_toyota.brake
# p my_tata.speed
# p my_toyota.speed
#
# my_tata.info
