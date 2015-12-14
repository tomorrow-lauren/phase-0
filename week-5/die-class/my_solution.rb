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