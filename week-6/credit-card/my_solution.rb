# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Devin Mandelbaum ].
# I spent [#] hours on this challenge.
# Pseudocode

# Input: Take a 16 digit number.
# Output: If it's valid, it will return true, otherwise false.
# Steps: First, verify that it's 16 digits long by converting it into a string. Then get the length of it.
# Then split it into individual characters [using an array]. Then convert them back into integers.
# Then multiply every other one, starting with the second to last digit.
# In a new method convert the numbers back to string if the length is greater than 1, split them apart. conver them back to integers, then add them all together.
# If that sum is divisible by ten, return true, otherwise return false.


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   def initialize(number)
#     if number.to_s.length != 16
#       raise ArgumentError.new("Please enter a 16 digit number.")
#     end
#     @card = number.to_s.chars
#   end
#   def check_card()
#     @card.map!{|x| x = x.to_i}
#     counter = 1
#     @card.map!{|double|
#       if counter % 2 != 0
#         counter +=1
#         double * 2
#       else
#         counter +=1
#         double
#       end
#       }
#     @card.map!{|x| x = x.to_s}
#     @card.map!{|splice|
#       if splice.length == 2
#         splice.chars
#       else
#         splice
#       end
#       }
#     @card = @card.flatten.map!{|x| x = x.to_i}
#     sum = 0
#     @card.each{|x| sum += x}
#     if sum % 10 == 0
#       return true
#     else
#       return false
#     end
#   end
# end

# Test_CC = CreditCard.new(1234567890123456)
# p Test_CC.check_card



# Refactored Solution
class CreditCard
  def initialize(number)
    if number.to_s.length != 16
      raise ArgumentError.new("Please enter a 16 digit number.")
    end
    @card = number.to_s.chars.map!(&:to_i)
  end
  def check_card()
    counter = 1
    @card.map!{|double|
      if counter.odd?
        counter +=1
        double * 2
      else
        counter +=1
        double
      end
      }
    @card.map!(&:to_s)
    @card.map!{|splice|
      if splice.length == 2
        splice.chars
      else
        splice
      end
      }
    @card.flatten!.map!(&:to_i)
    sum = 0
    @card.each{|x| sum += x}
    if sum % 10 == 0
      return true
    else
      return false
    end
  end
end
Test_CC = CreditCard.new(1234567890123456)
p Test_CC.check_card


# Reflection
# What was the most difficult part of this challenge for you and your pair?
# I think we kept going back and forth trying to find easier methods to iterate evenly - or keep it clean. We finally took a break, but I think that we really went on a bit too long it that regard. We had a hard time getting that right in the first place.
# What new methods did you find to help you when you refactored?
# I found this cool shortened argument for max!method of switching things tointegers with adding (&:to_i) or (&:to_s). Also, the odd? method for the counter was useful. It allowed us to at least slightly simplify/make the code more readable.
# What concepts or learnings were you able to solidify in this challenge?
# This really helped me learn how to write destructive code. I think I always err on the side of non destructive but wiht my partner, I was able to find faster methods and get more comfortable with destructive methods.