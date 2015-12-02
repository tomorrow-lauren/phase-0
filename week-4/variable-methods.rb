puts 'Hello there, and what\'s your first name?'
name = gets.chomp
puts 'What about the middle?'
name_2 = gets.chomp
puts 'Well, what\'s your last name, then?'
name_3 = gets.chomp
puts 'Your name is ' + name.capitalize + ' ' + name_2.capitalize + ' ' + name_3.capitalize + '? What a lovely name!'

puts 'So what is your favorite number?'
fav_num = gets.to_i
puts "Does that make  #{fav_num + 1} better? It is bigger than #{fav_num}..."
=begin
How do you define a local variable?
  A local variable is is a variable that exists only with the method. It doesn't get out into the wild code and mess things up.
How do you define a method?
  A method is a set of commands that run. It sometimes requires a local variable in order to function. As Chris says in the book, it's the verbs of programming. Objects - strings, integers, floats, etc are the nouns. They interact with verbs but they don't do the same thing.
What is the difference between a local variable and a method?
  A local variable exists only within the method. It's a fixed thing. It's a noun that won't act on anything else unless given a verb, or method, on which to act. Methods can act but they don't have anything to act on inside without nouns like local variables.
How do you run a ruby program from the command line?
  You type ruby and then the name of the file. There's also using irb - the interactive ruby interface in your terminal. I found it a bit messy - I prefer to use the ruby command on a file. IRB will tell you if the ruby works but it won't save it so I didn't realy use it.
How do you run an RSpec file from the command line?
  You type rspec and then the name of the file. This is a file that is used to test the methods that you are creating. The first few times, they had us do this in file, but that's bad code practice.
What was confusing about this material? What made sense?
  Trying to define things I understand in the abstract, but perhaps not well otherwise. I recall interacting with methods and coding before so that hasn't been an issue. I often find reflections the most time consuming.
https://github.com/tomorrow-lauren/phase-0/blob/master/week-4/addresses/my_solution.rb
https://github.com/tomorrow-lauren/phase-0/blob/master/week-4/math/my_solution.rb
=end