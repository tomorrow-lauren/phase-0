# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: Roche, they drove].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array of numbers
# Output: The numbers in the array added together
# Steps to solve the problem.
# Iterate through the array and add each number to the others and return the total.


# 1. total initial solution
#def total num_array[]
#  sum=0
#  while num_array[i] > 0
#    sum=num_array[i] + sum
#    i++
#  end
# end

# 3. total refactored solution

def total num_array
  #counter=num_array.length
  sum=0
  num_array.each do |item|
    sum+=item
  end
  return sum
end

total [1,2,3,4]



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array of strings
# Output: Sentence.
# Steps to solve the problem.
#Iterate through an array of strings and concatenate them, capitalizing the first word and adding spaces.
#
#



# 5. sentence_maker initial solution

#def total string_array
#  sentence=""
#  string_array.each do |item|
#    sentence= sentence + item + " "
#  end
#  puts sentence
#end




# 6. sentence_maker refactored solution

def sentence_maker string_array
  sentence=""
  string_array.each do |item|
      sentence= sentence + item.to_s + " "
  end
  sentence=sentence.capitalize.chomp(" ") + "."
  return sentence
end