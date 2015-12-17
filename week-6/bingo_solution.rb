# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [5] hours on this challenge.


# Release 0: Pseudocode
# Outline: basically make a working BingoBoard class.

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #method will call random on the array length and then that will be the letter as it were. then the random number generator will pick a number. Together they'll make the call number

# Check the called column for the number called.
  # columns are the set array position so B = 0, I=1, etc, so we need to check the array position of each item.

# If the number is in the column, replace with an 'x'
  #if the number is there, call a replacement method to subsitute the found number for 'x' save the board - this si a destructive method.

# Display a column to the console
  # puts every number in the position of the array out.

# Display the board to the console (prettily)
  # it would need to iterate and puts it nicely.

# Initial Solution

# class BingoBoard

#   def call()
#     @column = Random.rand(0..4)
#     @column_name = @title_board[@column]
#     @number_called = Random.rand(1..100)
#     p "Calling #{@column_name}#{@number_called}!"
#   end
#   def check()
#     counter = 0
#     @bingo_board.each {|row|
#        if row[@column] == @number_called
#           row[@column] = 'X'
#           p "You hit!"
#         end
#     }
#     @title_board.each{|title|
#       print " " + title + "  "
#     }
#     puts "\n"
#     @bingo_board.each{|item| p "#{item.to_s}"}
#     end
# end

# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
    @title_board = ["B","I","N","G","O"]
  end

  def call()
    @column = Random.rand(0..4)
    @number_called = Random.rand(1..100)
    p "Calling #{@title_board[@column]}#{@number_called}!"
  end
  def check()
    @bingo_board.each {|row|
       if row[@column] == @number_called
          row[@column] = 'X '
          p "You hit!"
        end
    }
    @title_board.each{|title|
      print title + "  "
    }
    puts "\n"
    @bingo_board.each{|item| print item.join(" ") + "\n"}
 end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

p new_game = BingoBoard.new(board)

new_game.call()
new_game.check()
new_game.call()
new_game.check()
new_game.call()
new_game.check()

#Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# I think I could definitely use some improvement. I'm trying but it's hard to one, not just jump into coding, and two, to not just drop the bits of code as I think of them. I think that as time goes on and this continues to be a part of the exercises, I will and will strive to improve.
# What are the benefits of using a class for this challenge?
# Instance variables, totally. Plus instance methods allow you to make methods for all the boards. All the boards will look and operate the same
# How can you access coordinates in a nested array?
# If you are accessing a specific spot, the best way ot access it is by calling those coordinates. Like in
# array = [1,[2,[3,4]],5]
# to get to 4 you would write
# array[1][1][1]
# What methods did you use to access and modify the array?
# Initally, I used just printing the array. I also used .each to iterate through the array. I also used join, which adds up all the elements in an array. I will elaborate below.
# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# First, while I didn't use it in here, I did again try to flatten the array to see if that made it any easier. However, it didn't work with this program the way I wanted it to. I discovered this method called .join, which takes every element of the array and adds it to an array It also adds whatever you have in the parenthesis [like above I add " "] as a separator. This lets you print out arrays as one string.
# How did you determine what should be an instance variable versus a local variable?
# For a while I was storing EVERYTHING and then I realized that that was SERIOUSLY unnecessary. I don't need to keep every random thing that pops out of any method I use. Instance variables should only be things you really need to use again within the class. Random instances of a variable is not necessary to store, so using a local variable is preferable.
# What do you feel is most improved in your refactored solution?
# I definitely feel that the best thing I refactored was the board. I did try to figure out how to double space in instance of a single digit, but I could not figure it out. I tested so many things. In the end, I did end up getting it to look fairly nice so I'm ok.