# Format an Address
# I worked on this challenge [by myself].
# Your Solution Below

def add(num_1, num_2)
 p num_1.to_i + num_2.to_i
end

def subtract(num_1, num_2)
 p num_1.to_i - num_2.to_i
end

def multiply(num_1, num_2)
 p num_1.to_i * num_2.to_i
end

def divide(num_1, num_2)
 p num_1.to_f / num_2.to_f
end
add(2,3)      # => 5
subtract(2,3) # => -1
multiply(2,3) # => 6
divide(10,2)   # => 5.0 (*not* 5)