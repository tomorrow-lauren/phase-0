# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


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

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end
  def call()
    @column = @bingo_board[rand(1..6)][rand(1..6)]
  end
end

# Refactored Solution

p @column

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


#Reflection