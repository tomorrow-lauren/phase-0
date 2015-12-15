# Your Names
# 1) Lauren Reid
# 2) James "Jim" O'Neal

# We spent [1.5] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  # setting variables to use within the method
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 0
  # iterating through the library hash, comparing  the items in the library to the item_to_make that we passed into the method. If they do not match, then it subtracts from the error counter.
  library.each_key do |food|
    if food == item_to_make
      error_counter += 1
    end
  end
  # if the error counter doesn't get to zero, it meants that the item_to_make is not in the library and can't be made, returning an error message
  if error_counter == 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
  # creating new variable serving_size which is the value/number of ingredients we need to make 1 of any of the item_to_make
  req_num_ingredients = library.values_at(item_to_make)[0]
  # creating new variable remaining_ingredients which is the remainder of ingredients after we determine how many servings the num_of_ingriedents can make
  remaining_ingredients = num_of_ingredients % req_num_ingredients
  # case statement that if the remaining ingredients is 0, it returns a sentence telling us how many of the items_to_make were made

  suggested_items = library.find_all { |food, ing| remaining_ingredients >= ing }.to_h
  list_of_sug = ""
  suggested_items.each do |food,num|
    list_of_sug.concat(food.to_s.capitalize + "(takes ")
    list_of_sug.concat(num.to_s+ " ingredient(s), ")
  end
  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / req_num_ingredients} of #{item_to_make}"
    # otherwise return the number of items made and how many ingredients remain and suggest other items to be made.
  else
    return "Calculations complete: Make #{num_of_ingredients / req_num_ingredients} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{list_of_sug.chop.chop}"
  end
end

# Driver code - calling the method with explicit and printed examples to verify the code
# p serving_size_calc("pie", 7)
p serving_size_calc("pie", 12)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?
I learned to be very aware of one, how errors show themselves and to p anything I don't get. I also got to use chop, which is one of my favorite methods because I think it reads fun? CHOP CHOP!
Did you learn any new methods? What did you learn about them?
We used find_all, which was in the RubyDocs but new to both of us. I learned it returns an array when you pass it an enum/array/hash thingy. It iterates and puts the hash,key that meets the block of codes requirements. It's pretty cool.
What did you learn about accessing data in hashes?
That it's easier to print from a hash than from an array. find_all returns an array and so we basically had to convert it to a hash to get it to print right, which it did handily, thank goodness.
What concepts were solidified when working through this challenge?
Arrays only like to puts out neatly. Iterating over them, plucking their [0] is somehow harder than a hash. Maybe it's just my conception of the array, maybe it was my frustration. This week, I like arrays. Also, I got to use more enumerable methods and such, so those feel better to me. I feel a lot better than last week haha.
=end