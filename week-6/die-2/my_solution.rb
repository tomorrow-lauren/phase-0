# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: It should take and array of labels for it's sides.
# Output: sides should be an INT corresponding
# Steps: take array, assign it's data to something. verify it's not empty. assign instance variables to the needed info. create the methods.


# Initial Solution

class Die
  def initialize(labels)
    if labels.length < 1
    raise ArgumentError.new("Dies need more than one side :)")
  end
    @sides= labels.length
    @labels = labels
  end

  def sides
    @sides
  end

  def roll
    return @labels[Random.rand(@sides)]
  end
end



# Refactored Solution








# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
There wasn't much change. I just had to adapt to a different input. The first time we got an integer, now an array. But arrays have a length that will tell you how many things.
What does this exercise teach you about making code that is easily changeable or modifiable?
Well, it teaches you not to alter too much from the basics. I mean if you'vegot something that works well and highly efficiently, then it's also adadptive. I like that this was mostly about thinking about what variables do and why? Like,the exercise was pretty basic but reinforced some core concepts.
What new methods did you learn when working on this challenge, if any?
I didn't really leanr anything new, but I really like these class exercises. They're fun!
What concepts about classes were you able to solidify in this challenge?
Well, how to use and create instance variables. It also showed how useful classes can be. I also like this because I think it would be really fun to use! I can make a random generator! Yay.
=end