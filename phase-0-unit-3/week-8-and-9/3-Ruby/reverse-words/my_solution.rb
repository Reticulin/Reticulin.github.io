# U3.W8-9: Reverse Words


# I worked on this challenge [by myself, with:Mark McQuillen ].

# 2. Pseudocode
=begin
put string into array
iterate through array
reverse each word 
join the reversed words
=end


# 3. Initial Solution
def reverse_words(string)
	string = string.split(' ')
	string.each { |word| word.reverse! }
	string.join(' ')
	end


# 4. Refactored Solution






# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

reverse_words("")
reverse_words("Hello there my friend")
reverse_words("Cats like mice")
reverse_words("gobble said the turkey")



# 5. Reflection 
#Simple and straightforward assignment. The syntax was familiar with me so I was able to get it done quickly.