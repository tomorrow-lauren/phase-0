# Leap Years

# I worked on this challenge [with: Todd].

# Your Solution Below
def leap_year?(year)
  if year % 100 == 0 && year % 400 != 0
    return false
  elsif year % 4 == 0 || year % 400 == 0
    return true
  end
  return false
end


