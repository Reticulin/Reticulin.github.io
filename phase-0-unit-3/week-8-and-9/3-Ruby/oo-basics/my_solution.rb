# U3.W8-9: OO Basics: Student


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode



# 3. Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)   #Use named arguments!
    @first_name = first_name
    @scores = scores
  end
  def average
  	@scores.inject(:+).to_f/@scores.size
  end
  def letter_grade
  	grade = average
  	if grade >= 90
  		p "A"
  	elsif grade >= 80
  		p "B"
  	elsif grade >= 70
  		p "C"
  	elsif grade >= 60
  		p "D"
  	else
  		p "F"
  	end
  end
def linear_search(students, name)
index = students.find_index{ |student| student.first_name == name }
index ? index : -1
end
end
  students = [
	Student.new("Alex", [100,100,100,0,100]),
	Student.new("Joe", [100,100,95,90,85]),
	Student.new("Nala", [25,50,35,40,15]),
	Student.new("Muffin", [75,65,80,95,70]),
	Student.new("Sarah", [100,100,100,100,105])		
]


# 4. Refactored Solution
class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)   #Use named arguments!
    @first_name = first_name
    @scores = scores
  end
  def average
  	@scores.inject(:+).to_f/@scores.size
  end
  def letter_grade
  	grade = average
  	if grade >= 90
  		p "A"
  	elsif grade >= 80
  		p "B"
  	elsif grade >= 70
  		p "C"
  	elsif grade >= 60
  		p "D"
  	else
  		p "F"
  	end
  end
def linear_search(students, name)
students.find_index { |student| student.first_name == name } || -1
end
end





# 1. DRIVER TESTS GO BELOW THIS LINE
# Tests for release 0:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Tests for release 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Tests for release 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1





# 5. Reflection 
#I felt that this assignment was the same as a previous assignment except for the linear search. Setting grades and averages were not that difficult, however trying to find resources on linear search was difficult. Average was pretty simple mostly due to the fact that I have thatsyntax for averaging memorized. All in all, it was a good review with some new material to boot.