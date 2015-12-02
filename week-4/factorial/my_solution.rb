# Factorial

# I worked on this challenge [with: Roche].
# Your Solution Below
def factorial(number)
  counter = number.to_i - 1
  if number.to_i == 0
    return 1
  else
  while counter > 0
   number = number * counter
   counter = counter - 1
  end
end
return number
end
