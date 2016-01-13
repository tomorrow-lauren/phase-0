# Reverse Words

# I worked on this challenge [by myself].
# This challenge took me [#] hours.

# Pseudocode
# have a reverse method that takes a string of words and reverses each word in place - not reversing the whole string.
# split each word into an array
# reverse those words
# join them back together
# return reversed array

# Initial Solution

# def reverse_words(words_to_reverse)
#   if words_to_reverse == ""
#     return ""
#   else
#     wordy_array = words_to_reverse.split(" ")
#     wordy_array.each {|word| word.reverse!}
#     wordy_array.join(" ")
#   end
# end

# Refactored Solution

def reverse_words(words_to_reverse)
  return words_to_reverse.split(" ").each {|a_word| a_word.reverse!}.join(" ")
end

# Reflection
# What concepts did you review in this challenge?
# I used .split(), .join(), .each, and .reverse(). In one line! I took the string, made all the words and array reverse each word in the array and then re joined them with a " ". I'm actually reall proud of this.
# What is still confusing to you about Ruby?
# I think that sometimes I /don't/ think of a one line solution. I think that this was a great experience for me to get comfortable with that. I think finding a middle ground might be helpful.
# What are you going to study to get more prepared for Phase 1?
# Of this challenge, not much. I think that I still need refreshers on some methods. I hope to spend the weekend rereading some of the chapters in the books, once I get all the projects done. and do maybe some practice pseudocode?