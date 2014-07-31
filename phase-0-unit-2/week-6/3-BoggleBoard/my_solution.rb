# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode



# 3. Initial Solution
class BoggleBoard
attr_reader :dice_grid
def initialize(dice_grid)
@dice_grid = dice_grid
end
def get_row(row)
p @dice_grid[row]
end
def get_col(col)
p "#{@dice_grid.map.with_index {|x, i| @dice_grid[i][col]}}"
end
def get_diagonal(coord1, coord2)
first1 = coord1[0]
first2 = coord1[1]
last1 = coord2[0]
last2 = coord2[1]
check1 = last1 - first1
check2 = last2 - first2

if check1 == check2
	if first1 < last1
		while first < last
			p "#{@dice_grid[first1][first2]}"
 		first1 += 1
 		first2 += 1
 	end
 	p "#{@dice_grid[last1][last2]}"
 elsif first1 > last1
 	while first1 > last1
 		p "#{@dice_grid[first1][first2]}"
 		first1 -= 1
 		first2 -= 1
 	end
 	p "#{@dice_grid[last1][last2]}"
 end
else
	p "Invalid Diagonal"
end
end
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 


# 4. Refactored Solution
class BoggleBoard
attr_reader :dice_grid

	def initialize(dice_grid)
		@dice_grid = dice_grid
	end

	def get_row(row)
		p @dice_grid[row]
	end
	
	def get_col(col)
		p "#{@dice_grid.map.with_index {|x, i| @dice_grid[i][col]}}"
	end
	
	def get_diagonal(coord1, coord2)

		first1 = coord1[0]
		first2 = coord1[1]
		last1 = coord2[0]
		last2 = coord2[1]

		check1 = last1 - first1
		check2 = last2 - first2

		if check1 == check2
			if first1 < last1
				while first1 < last1
					p "#{@dice_grid[first1][first2]}"
 					first1 += 1
 					first2 += 1
 				end
 			p "#{@dice_grid[last1][last2]}"
 		elsif first1 > last1
 			while first1 > last1
 				p "#{@dice_grid[first1][first2]}"
 				first1 -= 1
 				first2 -= 1
 			end
 		p "#{@dice_grid[last1][last2]}"
 		end
	else
	p "Invalid Diagonal"
	end
end
end





# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:
boggle_board.get_row(1)
boggle_board.get_col(1)
boggle_board.get_diagonal([0,0],[3,3])

# 5. Reflection 
#This was a tough challenge. The first part of it may be easy since I had code fro the previous week to help me, but the hard part was traversing the nested array diagonally. After trial and error I was able to get it working and while it may be long, it works well.