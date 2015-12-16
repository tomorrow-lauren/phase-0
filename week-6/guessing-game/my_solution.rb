# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: the class should take an int
# Output: Whether or not it
# Steps:
# initialize
# make sure the methods work
# make sure it returns true v false


# Initial Solution
=begin
class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
    # Make sure you define the other required methods, too
  end
  def solved?()
    @solved
  end
  def guess(guess)
    if guess == @answer
      @solved = true
      return :correct
    elsif guess >= @answer
      @solved = false
      return :high
    elsif guess <= @answer
      @solved = false
      return :low
    end
  end
end

=end
# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
    # Make sure you define the other required methods, too
  end
  def solved?()
    @solved
  end
  def guess(guess)
    if guess == @answer
      @solved = true
      return :correct
    elsif guess >= @answer
      @solved = false
      return :high
    elsif guess <= @answer
      @solved = false
      return :low
    end
  end
end

# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
  Methods are actions any real life object can do. You can roll dice, you can bake cookies. instance variables are constant among all of these objects. You need ingredients for cookies, or sides for a die. To roll a dice you have to know what the sides say, how to read the labels.
When should you use instance variables? What do they do for you?
  They let you store things across methods in your class. That way you always retain the information that is relevant to the object you're creating. That way, the die has the same sides as was entered at it's creation. People can't mess with it but that also makes it constant when called.
Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
  Flow control is using many if scenarios, to find the truthiness of statements and use that to get what you need out of a method. I somehow always think that there has to be a FASTER way to do these things, but I think that I wound up with the most efficient way.
Why do you think this code requires you to return symbols? What are the benefits of using symbols?
  Probably to get us to read the book and get used to the concept. The benefits of symbols included they are immutable - you won't find a concat or push method for them, and they're .object_id is constent. :abc has the same id whereever you use it. It's also useful as a Hash key, especially to make things pretty.
=end