# Pad an Array

# I worked on this challenge [with: Angelika ]

# I spent [2] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
=begin
def pad!(array, pad_size, value = nil) #destructive
  if array.size < pad_size
    until array.size == pad_size
    array.push(value)
    end
  end
  p array
end
=end
=begin
def pad(array, pad_size, value = nil) #non destructive
  new_array = array + Array.new(pad_size)
if new_array.size < pad_size
    new_array.fill(value, pad_size)
  end
  p new_array
end
=end

# 3. Refactored Solution
def pad!(array, pad_size, value = nil)
  array.fill(value, array.length...pad_size)
end

def pad(array, pad_size, value = nil)
  p array + Array.new([0, pad_size-array.length].max, value)
end

# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?
Yes, I think we worked that out pretty quick.
Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
When you refactored, did you find any existing methods in Ruby to clean up your code?

How readable is your solution? Did you and your pair choose descriptive variable names?
I think so.
What is the difference between destructive and non-destructive methods in your own words?

=end