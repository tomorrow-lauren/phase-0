## Calculate the mode Pairing Challenge

# I worked on this challenge [with: Lindsey ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An array of numbers or strings
# What is the output? Array of most frequent items
# What are the steps needed to solve the problem?
#  Create a new hash to hold counts of items
#  Loop through array
#    Add a hash key for each item in the array
#    Increment the hash value for the item
#  Loop through the hash to identify the items with highest count values


# 1. Initial Solution
=begin
def mode(array)
the_list = Hash.new(0)
  array.each {|x|
    the_list[x] += 1
  }
  counter = 0
  the_list.each_value {|value|
    if value >= counter
      counter = value
    end
  }
  mode_array = []
  the_list.each {|key, value|
    if value == counter
      mode_array.push(key)
    end
    }
  p mode_array
end
=end
# 3. Refactored Solution
def mode(array)
the_list = Hash.new(0)
  array.each {|x|
    the_list[x] += 1
  }
  mode_array = []
  the_list.each {|key, value|
    if value == the_list.values.max
      mode_array.push(key)
    end
    }
  p mode_array
end
# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?
We went with a Hash, because I knew how to increment the value from another challenge so it seemed easiest. It allowed us more time to focus on refactoring the other steps, trimming down excess variables and all that.
Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
Yes, only because we were both so nervous because we'd gotten feedback about being bad at psuedo code that we were very careful to try and do it correctly.
What issues/successes did you run into when translating your pseudocode to code?
We both had a pretty good idea of what needed to be done. We did it the most clunky but obvious way. This let us have WORKING code that we could refactor.
What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
We used max, which let us just use the largest value in our hash without having to use a counter and helped us streamline. That was good. I don't think we had many headaches.
=end