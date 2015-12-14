# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [1] hours on this challenge.

# 0. Pseudocode

# Input: each die takes a side argument returns variable holding it
# Output: any time sides is called, it returns that input
# Steps: any time roll is called on a die, it needs to take the sides previously entered and enter a random number from that.


# 1. Initial Solution
=begin
class Die
  def initialize(sides)
  if sides < 1
    raise ArgumentError.new("Dies need more than one side :)")
  end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    return 1 + Random.rand(@sides)
  end
end
=end


# 3. Refactored Solution


class Die
  def initialize(sides)
  if sides < 1
    raise ArgumentError.new("Dies need more than one side :)")
  end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    return 1 + Random.rand(@sides)
  end
end

# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
It is something you raise when the input won't work for the results.
What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
ArgumentError was new. It was pretty straight forward. It worked out.
What is a Ruby class?
It's a type of object that imbues them with certain inherent methods. It lets you basically make an "object" that lets you build in methods to things so that you don't have to do it OVER and OVER.
Why would you use a Ruby class?
So you can make your own object, so you can basically store methods that can be used later.
What is the difference between a local variable and an instance variable?
Local variable is only in a method. They are assigned in the method and can't leave as it were. Instance variable start with @ signs and are used when building a class.
Where can an instance variable be used?
Anywhere within the class once its value is set.
=end
