# Virus Predictor

# I worked on this challenge [with: Alana Hanson].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
## require_relative means that it needs a local copy of the file, in the same directory so that it can use it in the code.
# It differs from require because it needs to be in the same file/project, and it's faster. Require is more for the external files, like Gems.
#
require_relative 'state_data'

class VirusPredictor
# initializing the class & assigning arguments to instance variables
  def initialize(state_of_origin, population_density, population)
  @state = state_of_origin
  @population = population
  @population_density = population_density
  end

# running two other methods in the class
  def virus_effects
    predicted_deaths
    speed_of_spread
  p "#{@state} will lose #{@number_of_deaths} people in this outbreak and will spread across the state in #{@speed} months."
  end

private

# using conditional logic and formula to determine number of deaths and output same
  def predicted_deaths()
  # predicted deaths is solely based on population density
    case @population_density
    when 200..1000
      @number_of_deaths = (@population * 0.4).floor
    when 150...200
      @number_of_deaths = (@population * 0.3).floor
    when 100...150
      @number_of_deaths = (@population * 0.2).floor
    when 50...100
      @number_of_deaths = (@population * 0.1).floor
    else
      @number_of_deaths = (@population * 0.05).floor
  end
  end

# uses density to calculate rate that virus will spread and output same
  def speed_of_spread() #in months
  # We are still perfecting our formula here. The speed is also affected
  # by additional factors we haven't added into this functionality.
  @speed = 0.0

  case @population_density
    when 200..1000
      @speed += 0.5
    when 150...200
      @speed += 1
    when 100...200
      @speed += 1.5
    when 50...100
      @speed += 2
    else
      @speed += 2.5

    end

  end

end
#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
# STATE_DATA.each do |state, data|
#   data.each do |sym, num|
#     if
#     pop = data[sym]
#   end
#  #  x = VirusPredictor.new(state,state, )
# #  x.virus_effects
# end

STATE_DATA.each do |state, data|
  x = VirusPredictor.new(state, data[:population_density], data[:population])
  x.virus_effects
end
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

#=======================================================================
# # Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# The initial has, with the String key hashrocket to has value is the older style of annotation. It's a little more cumbersome. The interior, or the hash in the hash, uses symbols instead of Strings, allowing for less space and more readable code.
# What does require_relative do? How is it different from require?
# I answered this in code but here it is again:
# require_relative means that it needs a local copy of the file, in the same directory so that it can use it in the code. It differs from require because it needs to be in the same file/project, and it's faster. Require is more for the external files, like Gems.
# What are some ways to iterate through a hash?
# We used the .each method to go over the | keys, andValues| so they can be looked at and assigned to things.
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# We made the returned values instance variables. That's so we didn't have to re enter all the variables and call them and... well it made it run smoother and faster. And  we could make the printing come from that directly.
# What concept did you most solidify in this challenge?
# I think I really got the hang of somethings and that I need to work on my hash knowledge. I also think I should not do GPS's at the end of the week because I'm so lost at that point from learning JS. Anyway, I also got more of a handle on refactoring. I also think we learned a lot about switch case and when stuff. I'd never used it and the Guide had left at that point so we kinda just leanred it on our own. Which was AWESOME.