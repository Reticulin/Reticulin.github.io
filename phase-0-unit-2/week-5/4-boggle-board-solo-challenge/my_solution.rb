# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: ].

$boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode: a simple print boggle_board[row] should work fine here

# Initial Solution
def get_row(row)
	print $boggle_board[row]
end

# Refactored Solution

def get_row(row)
	print $boggle_board[row]
end

# DRIVER TESTS GO BELOW THIS LINE
get_row(0)
get_row(1)
get_row(2)

# Reflection 

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode: since the row has to be defined always, have to print out column letters one letter at a time by their specific coordinates and put that within an array.

# Initial Solution
def get_col(col)
    print [($boggle_board[0][col]), ($boggle_board[1][col]), ($boggle_board[2][col]), ($boggle_board[3][col])]
end

# Refactored Solution
def get_col(col)
    print [($boggle_board[0][col]), ($boggle_board[1][col]), ($boggle_board[2][col]), ($boggle_board[3][col])]
end

# DRIVER TESTS GO BELOW THIS LINE
get_col(0)
get_col(1)
get_col(2)

# Reflection 
#I'm a bit confused on this solo challenge as I expected something incredibly difficult. There is that chance I may have done this wrong, but my code is sound for whatever yo uguys asked me to do on this assignment. Finished this assignment quickly and wasn't tedious, just anticlimactic.


