# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2],
        ["inner",
        ["eagle", "par",
        ["FORE", "hook"]]]]

# attempts:
# ============================================================
#p array[3][1]
#p array[1][1][2]
p array[1][1][2][0]



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer:
        {inner:
          {"almost" => {3 => "congrats!"}
            }
          }
  }

# attempts:
# ============================================================
#p hash{outer:}{inner:]{"almost"}{3}
# p hash{:outer}{:inner}{almost}{3}
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array:
              ["array",
                {hash:
                  "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

# number_array = [5, [10, 15], [20,25,30], 35]

# number_array.each do |num|
#   if num.is_a? Integer
#     p num = num + 5
#   end
# end

number_array = [5, [10, 15], [20,25,30], 35]
=begin
number_array.each do |element|
  if element.is_a? Integer
    p element = element+5
  else
    element.each do |nested|
      p nested +=5
    end
  end
end
=end
#p number_array.flatten.each {|num| num+5}
# p number_array.flatten
number_array.flatten.each {|num| p num+5}

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# p startup_names.flatten +"ly"
p startup_names.flatten.each {|word| word.concat("ly")}

# # Reflection
# What are some general rules you can apply to nested arrays?
# Well, if it's all arrays, you can use flatten. You also have to rememeber that arrays number themselves starting at 0. Also, when they have symbols in hashes like this: remember when using it as a key to use standard notation - :this - for the symbol.
# What are some ways you can iterate over nested arrays?
# If you use .flatten on them, a simple each do method [going over all the elements in this flatten array], will be sufficient. Otherwise you can also use [these brackets] to call up a specific spot, especially if you want a specific item in the  nested array, or just a specific nested array. That will let you iterate over that array.
# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# I had heard of but never used .flatten, so when my partner suggested it, we tried it. It flattens any nested array, so as long as you don't need it to stay in it's structure, it's a remarkably efficient way to reduce iterative drag if you will. It worked for us because we just wanted to add 5 to all the numbers in number_array, so that was the optimal route.