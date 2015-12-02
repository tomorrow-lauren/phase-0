# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [.75] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 170
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# The error is technically at the bottom - line 170 - "write your comment here", according to the interpreter.
# 6. Why did the interpreter give you this error?
# Because there's no close to the while loop. It's not iterating or anything.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# 35
# 2. What is the type of error message?
# undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
# It says it's a Object(NameError)
# 4. Where is the error in the code?
# it's just a variable or method name
# 5. Why did the interpreter give you this error?
# because the given name was invalid or undefined.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# 50
# 2. What is the type of error message?
# undefined method
# 3. What additional information does the interpreter provide about this type of error?
# main:Object(NoMethodError)
# 4. Where is the error in the code?
# There's no such method
# 5. Why did the interpreter give you this error?
# Because the method doesn't exist.

# --- error -------------------------------------------------------

#def cartmans_phrase
 # puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 65
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# (1 for 0) (ArgumentError) from errors.rb:69:in `<main>'
# 4. Where is the error in the code?
# the method doesn't request a variable, but in calling it, they have given one.
# 5. Why did the interpreter give you this error?
# because there should be 0 inputs and there is 1. So either the method should have (a variable) or calling it should not.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
 # puts offensive_message
#end

# cartman_says

# 1. What is the line number where the error occurs?
# 84
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# (0 for 1) (ArgumentError)  from errors.rb:88:in `<main>'
# 4. Where is the error in the code?
#  it's in the arguments. again.
# 5. Why did the interpreter give you this error?
# because this time there was no argument given, even though it was supposed to receive a variable.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
 # puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# 105
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
#(1 for 2) (ArgumentError) from errors.rb:109:in `<main>'
# 4. Where is the error in the code?
# They got the wrong number of arguments.
# 5. Why did the interpreter give you this error?
# The method asks for 2 but they only called the method with one.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 124
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum
# 4. Where is the error in the code?
# They are trying to multiply a string into a Fixnum
# 5. Why did the interpreter give you this error?
# Because it encountered the wrong type.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 139
# 2. What is the type of error message?
# divided by zero
# 3. What additional information does the interpreter provide about this type of error?
# (ZeroDivisionError) from errors.rb:139:in `<main>'
# 4. Where is the error in the code?
# It's trying to define a variable as the result of 20/0
# 5. Why did the interpreter give you this error?
# You can't divide by 0. Literally, it's not a thing.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 155
# 2. What is the type of error message?
# cannot load such file
# 3. What additional information does the interpreter provide about this type of error?
# phase-0/cartmans_essay.md (LoadError) from errors.rb:155:in `<main>'
# 4. Where is the error in the code?
# they are calling up a file that doesn't exist.
# 5. Why did the interpreter give you this error?
# because I don't have this on my local machine and so it can't call up a non existent file.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
# Which error was the most difficult to read?
# String can't be coerced into a Fixnum. Still not sure I read that right. I mean you can multiply strings in methods or puts but I don't think you can do it in wild code, esp I think using a Fixnum - a non variable integer thing.
# How did you figure out what the issue with the error was?
# Most of these felt really self evident luckily. You just look at the line, see what the message says and go. There were a couple moments where I had to look up the error type, because while I knew what was wrong, I wanted to know why that specific error was called.
# Were you able to determine why each error message happened based on the code?
# Yeah, between the code and error messages, I feel like I got the jist of why it happened. These were all pretty straight forward codes. I think with more complex codes and multiple errors it would get messy.
# When you encounter errors in your future code, what process will you follow to help you debug?
# Oh, this process. Look, ruby tells you where the error is in the code. Infact it tells you the span of the code itself sometimes Just look at the message, note the type of error. Then, go to the code, look at the location and bam. You should be able to see why you are getting an error. It seems pretty straight forward, although debugging is often frustrating with longer chunks.
