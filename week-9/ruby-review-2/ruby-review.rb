# Create a Car Class from User Stories

# I worked on this challenge [with Jovanka].

# 2. Pseudocode
# create Car class object that will interact with the pizza delivery game
# create intialize method with model/color
# set those to instance variables
# create a method for distance to drive
# follow directions
# have variable to keep track of miles [for reimbursement]
# have a speed method that will display speed. speed variable should also probably be readable, maybe writeable?
# create navigation method to follow directions and turn left and right.
# define a method to be able to accelerate/decelerate to specified speed or add to speed method
# add stop function to speed method
# have everything go to the console


# 3. Initial Solution
 class Car

  attr_reader :model, :color
  attr_accessor :speed, :pizzas_in_car

  def initialize(model, color)
    @model = model
    @color = color
    p "You have created a #{@model} Car in #{@color}"
  end

  def distance()
    @miles = 0
    p "You have gone #{@miles} miles!"
  end

  def speed()
    @speed = 0
    def accelerate(up_to)
      @speed = up_to
      p "You are now going #{@speed}"
    end
    def decelerate(down_to)
      @speed = down_to
      p "You are now going #{@speed} MPH"
    end
  end

   def check_speed()
     p "You are currently going #{@speed} MPH."
   end

  def navigate(direction, miles)
    if direction == "stop"
      @speed = 0
      p "You have stopped."
    elsif direction == "turn left"
      p "You have turned left."
    elsif direction == "turn right"
      p "You have turned right."
    elsif direction == "drive"
      @miles += miles
      p "You have driven #{@miles}, and your current speed is #{@speed} MPH."
    elsif direction == "arrived"
      @speed = 0
      p "You have driven #{@miles} total miles. You have arrived at your destination"
    end
  end
   def pizza_compartment(pizza_list)
     @pizzas_in_car = pizza_list
     p "Your current pizzas are #{@pizzas_in_car}"
   end
end

class Pizza
  attr_reader :toppings
  def initialize(toppings, size)
    @toppings = toppings
    @size = size
  end
  def serve()
    if @size == "medium"
      p "Here are 6 slices!"
    elsif @size == "large"
      p "Here are 12 slices!"
    else
      p "What an unusual size. Eat it all in one slice, I guess."
    end
  end
end

# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
testCar = Car.new("Mustang", "blue")
testCar.speed()
testCar.accelerate(25)
testCar.distance()
testCar.navigate("drive", 0.25)
testCar.navigate("stop", 0)
testCar.navigate("turn right", 0)
testCar.accelerate(35)
testCar.navigate("drive", 1.5)
testCar.check_speed()
testCar.decelerate(15)
testCar.navigate("drive", 0.25)
testCar.navigate("stop", 0)
testCar.navigate("turn left", 0)
testCar.accelerate(35)
testCar.navigate("drive", 1.4)
testCar.navigate("arrived", 0)
testCar.pizza_compartment(["meat","veg"])
p testCar.pizzas_in_car.push("veg")
p testCar.pizzas_in_car.pop()
p testCar.pizzas_in_car


# 5. Reflection

# What concepts did you review in this challenge?
# Building a class, instance variables, defining methods were all parts of this that we reviewed. Also writing driver code to make sure things went specifically as directed.
# What is still confusing to you about Ruby?
# I think attr_methods are like. sometimes confusing and sometimes not? They can be really frustrating. also, I think I prefer having a more concrete set of expectations for this sort of thing.
# What are you going to study to get more prepared for Phase 1?
# Oh definitely attr_methods and driver code. I like driver code and rspec stuff but I would like to know more and get a better handle on writing it. Psudeocode too.