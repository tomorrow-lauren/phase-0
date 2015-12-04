# Calculate a Grade

# I worked on this challenge [with: Todd].
# Your Solution Below
def get_grade(num)
  if num >= 90
    return 'A'
  elsif num <= 90 && num >= 80
    return 'B'
  elsif num >= 70 && num <= 79
    return 'C'
  elsif num >= 60 && num <= 69
    return 'D'
  else
    return 'F'
  end
end

