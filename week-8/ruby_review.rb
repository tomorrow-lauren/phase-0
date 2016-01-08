# I worked on this challenge [by myself].
# This challenge took me [1] hours.

# Pseudocode
# Input: an array of numbers
# Output: that array with numbers divisible by 3 fizz, 5 buzz and 3&5 fizzbuzz.
# Steps: 1, input an array [prep driver code].
# 2, write a method that will:
# look at the number
# determine if it should be fizz'd, buzz'd or fizzbuzz'd
# return the modified array

# Initial Solution
# def super_fizzbuzz(arr)
#   arr.map {|x|
#     if x % 3 == 0 && x % 5 == 0
#       x = "FizzBuzz"
#     elsif x % 3 == 0
#       x = "Fizz"
#     elsif x % 5 == 0
#       x = "Buzz"
#     else
#       x = x
#     end
#   }
# end
# Refactored
# def super_fizzbuzz(array_to_fizz)
#   array_to_fizz.map {|fizzbuzz_num_check|
#     if fizzbuzz_num_check % 3 == 0 && fizzbuzz_num_check % 5 == 0
#       fizzbuzz_num_check = "FizzBuzz"
#     elsif fizzbuzz_num_check % 3 == 0
#       fizzbuzz_num_check = "Fizz"
#     elsif fizzbuzz_num_check % 5 == 0
#       fizzbuzz_num_check = "Buzz"
#     else
#       fizzbuzz_num_check = fizzbuzz_num_check
#     end
#   }
# end

# p super_fizzbuzz([1,2,3])
# p super_fizzbuzz([300, 9, 20, 1])

# PezDispenser Class from User Stories

# I worked on this challenge [by myself].
# I spent [2] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# # Pseudocode
# Input: array of flavors
# Output:multiple objects depending on the method called:  number of flavors, number of pez, flavors left.
# steps: initialize class, store flavors in instance variable, create methods to track the pez avaiable, list flavors, and add flavors.

# Initial Solution

# class PezDispenser

#   def initialize(flavors)
#     @flavors = flavors
#   end
#   def pez_count()
#     @pez_count = @flavors.length
#   end
#   def see_all_pez()
#     @flavors
#   end
#   def add_pez(new_flavor)
#     @flavors = @flavors.push(new_flavor)
#   end
#   def get_pez()
#     @flavors.pop
#   end

# end


# Refactored Solution
class PezDispenser

  def initialize(flavors_given)
    @flavors_inside = flavors_given
  end
  def pez_count()
    @pez_count = @flavors_inside.length
  end
  def see_all_pez()
    @flavors_inside
  end
  def add_pez(new_flavor)
    @flavors_inside = @flavors_inside.push(new_flavor)
  end
  def get_pez()
    @flavors_inside.pop
  end

end

# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"

# Reflection
# What concepts did you review or learn in this challenge?
# I reviewed .each and .map in the fizzbuzz challenge. I thought I should use a each loop, but the map is the better one for the method and actually overwrites the item appropriately.
# In the Pez challenge, I reviewed how to create a class. I also used instance variables, as well as local variables. However I found the challenge abit frustrating because the driver code doesn't really let us explore the attr abilities of the class. I mean, making flavor an attr: readable is a great example of why you don't want the class to have an accessor attribute.
# What is still confusing to you about Ruby?
# I feel shaky on the docs, but I think that's a matter of practice. I also feel like I scour them for answers and yet still think my ways end up being the faster.
# I also like the attr but I'm still unsure if I'm conceptualizing them correctly. However, I find the driver code fix-as-you go way of writing code to be the most enjoyable? Like. write it, test it fix it test it fix it test it... it feels like a game, and it displays tangible results.
# What are you going to study to get more prepared for Phase 1?
# More methods. I'll probably sit down and actually read some of the assigned books. reading random snippets is sort of useful in spurts, but I will get a better feel for it once I'm actually reading the chapters in order.
# I also think I will really enjoy making my cheat sheet now that I've seen some of what I continue to have to look up. Explaining things to myself [or a loved one lol] always helps me feel better/more confident in my code.