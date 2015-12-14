# Numbers to Commas Solo Challenge

# I spent [3] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# The input in a number
# It outputs a string of that number with commas in the appropriate places.
# The method should:
# take the number
# figure out the size
# change to string?
# insert commas at appropriate junctures.


# 1. Initial Solution
=begin
def separate_comma(num_to_comma)
  str = num_to_comma.to_s
  if num_to_comma <= 1000
    p str
  elsif num_to_comma <= 10000
    p str.insert(1, ",")
  elsif num_to_comma <= 100000
    p str.insert(2, ",")
  elsif num_to_comma <= 1000000
    p str.insert(3, ",")
  elsif num_to_comma <= 10000000
    p str.insert(1, ",").insert(5, ",")
  elsif num_to_comma <= 100000000
    p str.insert(2, ",").insert(6, ",")
  end
end
=end
# 2. Refactored Solution
def separate_comma(num_to_comma)
  str= num_to_comma.to_s

end

separate_comma(9999999999)


# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?
Was your pseudocode effective in helping you build a successful initial solution?
Yes, totally. It helped me see how to at least build something that would pass the tests.
What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

How did you initially iterate through the data structure?
Just using if's. I keep thinking I know how to iterate better but I'm just not sure.
Do you feel your refactored solution is more readable than your initial solution? Why?

=end