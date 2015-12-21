#Attr Methods

# I worked on this challenge [by myself]

# I spent [2] hours on this challenge.

# Pseudocode

# Input: the class NameData will initialize with an instance variable of my name. Greetings will need an NameData variable, like name
# Output: If you give greetings a namedata variable it should print out a string like "Hello Student! How wonderful to see you today."
# Steps: initalize namedata with my name as a value and name as an attr value. reader, most like, since it doesn't need to be modded. greetings needs a name and a hello method to puts the greeting out.

class NameData
  attr_reader :name
  def initialize
    @name = "Lauren"
  end
end


class Greetings
  def initialize()
    @person = NameData.new
  end
  def hello
    p "Hello #{@person.name}! How wonderful to see you today."
  end
end
greet = Greetings.new
greet.hello


# Reflection

# Release 1

# What are these methods doing?
# initialize creates a new Object with default values. print_info returns the information to the screen in a pretty string. There are three what_is_[something] methods which each return their respectively named variables.. change_[repectively named variable]= changes the [variable] of the Object, but because of the synactic sugar allows you to do so like: age = 33, name = Xena, or occupation = "Warrior Princess"
# How are they modifying or returning the value of instance variables?
# They just return the set variables with the what_is_[thing you want to know] method. They use the synactic sugar of the change_[thing]= methods to set the instance variables to new data.
# Release 2
# What changed between the last release and this release?
# The age because an attribute, attr_reader, was used can now be just displayed with .age
# What was replaced?
# Is this code simpler than the last?

# Release 3
# What changed between the last release and this release?
# :age is a attribute that can be both read and written
# What was replaced?
# what_is_age and change_age methods.
# Is this code simpler than the last?
# Yes obviously. It allows you to change and call the age without a whole method for it.

# Release 6

# What is a reader method?
# it basically allows that variable to be automatically read from the outside. like lauren.age would return 27.
# What is a writer method?
# it allows the same thing to be changed - for instance, Lauren.age could be 27 but if you write Lauren.age = 28, then Lauren.age would return 28 [Hey, not until March!].
# What do the attr methods do for you?
# They allow the access of those variables easily from outside the method.
# Should you always use an accessor to cover your bases? Why or why not?
# No, because you sometimes don't want, pardon my language, idiot users to write over your info. You may want to SHOW them how many tickets have been entered but they don't need to be able to edit that. Or they may want to change another variable but it doesn't need to be called.
# What is confusing to you about these methods?
# At first, I thought you should use accessor for everything, but the more I looked into it, the more I really understood. There's a difference and there's reasons for those.