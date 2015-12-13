# Pad an Array

# I worked on this challenge [with: Angelika ]

# I spent [2] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? It takes an array
# What is the output? a new array
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
We struggled to get everything precisely, I think that we were so concerned with everything, that when we took a break everything seemed to be a lot clearer.
Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
We could NOT get the code to quite work. I walked away, came back, read the enumerable page and popped out with .max and .fill and figured out how to use them.
When you refactored, did you find any existing methods in Ruby to clean up your code?
Yeah, that enumerable page is really handy for going through arrays.
How readable is your solution? Did you and your pair choose descriptive variable names?
I think so. That's what you have to do, make it very readable.
What is the difference between destructive and non-destructive methods in your own words?
Destructive methods destroy the original item as it was. It changes that input permanently. Non-destructive methods return a different modified input. The original input is intact afterwards.
=end