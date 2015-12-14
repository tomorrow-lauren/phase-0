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
  str = num_to_comma.to_s
  count = str.length
  if count < 4
    p str
  elsif (count - 1) % 3 == 0
    while count > 1 do
      count = count - 3
      str.insert(count, ",")
    end
  elsif (count - 2) % 3 == 0
    while count > 2 do
      count = count - 3
      str.insert(count, ",")
    end
  elsif (count - 3) % 3 == 0
    while count > 3 do
      count = count - 3
      str.insert(count, ",")
    end
  end
  p str
end

separate_comma(999999999999)


# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?
I thought about breaking it out and reassembling it but I decided to first break out exactly what would happen in the most basic way. Then I went back and refactored after walking away. I need sleep or something and I just got out of my own head I think.
Was your pseudocode effective in helping you build a successful initial solution?
Yes, totally. It helped me see how to at least build something that would pass the tests.
What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
I used .insert, while loops. It's been a long time for either of those. I really wish I had read the "how-to" on reading ruby docs because I think I'm way better at it [see my quiz] than I was at the beginning of this challenge. Perhaps there is a one line way of doing this but I think my method is now pretty darn agile.
How did you initially iterate through the data structure?
I used if's then while loops. I created a way to check how long it is and use that to then iterate through, inserting commas as I went. I just needed sleep.
Do you feel your refactored solution is more readable than your initial solution? Why?
It is now. I mean I'm not sure I used maybe the best variable names in str and count but I feel it's readable now. and highly effective no matter the number! This is great!
=end