# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
  if a == 0.000 || b == 0.00 || c == 0.0000
    return false
  elsif a == b && b == c
    return true
  elsif (a) + (b) > (c) && (c) + (a) > (b) && (c) + (b) > (a)
    return true
  else
    return false
  end
end
