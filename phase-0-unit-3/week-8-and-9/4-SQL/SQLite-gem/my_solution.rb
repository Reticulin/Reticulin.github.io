# U3.W7: BONUS Using the SQLite Gem

# I worked on this challenge [by myself, with:Kevin Aungle]

require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"

def state_reps
	puts "STATE REPRESENTATIVES"
	puts $db.execute("SELECT name, location FROM congress_members WHERE location IN ('NJ','NY','ME','FL','AK')")
end

def print_arizona_reps
  puts "AZ REPRESENTATIVES"
  az_reps = $db.execute("SELECT name FROM congress_members WHERE location = 'AZ'")
  az_reps.each { |rep| puts rep }
end

def print_longest_serving_reps(minimum_years)  #sorry guys, oracle needs me, i didn't finish this!
  puts "LONGEST SERVING REPRESENTATIVES"
  puts $db.execute("SELECT name, years_in_congress FROM congress_members WHERE years_in_congress > #{minimum_years}")
end

def print_lowest_grade_level_speakers
  puts "LOWEST GRADE LEVEL SPEAKERS (less than < 8th grade)"
  puts $db.execute("SELECT name, grade_current FROM congress_members WHERE grade_current < 8")
end

def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end

def num_vote
	puts "NUMBER OF VOTES"
	puts $db.execute("SELECT name, COUNT(politician_id) FROM congress_members INNER JOIN votes ON (congress_members.id=votes.id)")
end

print_arizona_reps

print_separator

print_longest_serving_reps(35)
# TODO - Print out the number of years served as well as the name of the longest running reps
# output should look like:  Rep. C. W. Bill Young - 41 years

print_separator
print_lowest_grade_level_speakers 
# TODO - Need to be able to pass the grade level as an argument, look in schema for "grade_current" column
print state_reps
# TODO - Make a method to print the following states representatives as well:
# (New Jersey, New York, Maine, Florida, and Alaska)


##### BONUS #######
# TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.

#Prepared Statements (which force developers to define all the SQL code which allows the database to distinguish between code and data), Stored Procedures(which is defined and stored in the database itself and then called from the application rather than something that a user is allowed to enter) and Escaping all User Supplied Input(by doing this, the database will not confuse input with sql code).

# TODO (bonus)
# Create a listing of all of the Politicians and the number of votes they recieved
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, it should just 
#    have a similar format)
print num_vote

# Create a listing of each Politician and the voter that voted for them
# output should include the senators name, then a long list of voters separated by a comma
#
# * you'll need to do some join statements to complete these last queries!


# REFLECTION- Include your reflection as a comment below.
# How does the sqlite3 gem work? The sqlite3 gem allows you to access sql databases through a ruby application.  What is the variable `$db` holding?  The vairable db is holding the database that is within the same directory
# Try to use your knowledge of ruby and OO to decipher this as well as h
# ow the `#execute` method works.  Take a stab at explaining the line 
# `$db.execute("SELECT name FROM congress_members WHERE years_in_congress 
#   > #{minimum_years}")`.  Try to explain this as clearly as possible for 
# your fellow students.  First when putting in "db" you are telling ruby that you want to be using the database and by adding execute to that you are telling ruby you want to execute a command to that database which you will then put into the parenthesis.
# If you're having trouble, find someone to pair on this explanation with you.
#Paired on this assignment and was fun working together. We were able to tackle the required challenges, but got stuck on the bonus ones. I feel that maybe we need to research more resources in order to figure out the syntax for those bonus challenges.