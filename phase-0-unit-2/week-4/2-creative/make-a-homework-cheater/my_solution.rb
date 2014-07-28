# U2.W4: Homework Cheater!


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: Need to be able to input my name, date and topic followed by my paragraph.
# Output: It needs to be able to output all of the above cleanly and orderly
# Steps: Create a method that takes input as arguments and outputs them in an orderly fashion.


# 3. Initial Solution
def essay(title, name, date, subject, heorshe)
    puts title
    name = "By #{name}"
    puts name
    puts date
    puts
    thesis = "#{subject} was an influential figure in history. Without #{subject}, our present day would not be what it is."
    puts thesis
    puts
    main = "#{subject} led an interesting life up until death. #{subject} has also contributed to how our world is today. #{heorshe} managed to gain the attention of others through either actions or words. #{subject}'s qualities in life will always be remembered through our history books. We will never forget #{subject}, for #{heorshe} has had an impact on our world and thus our history."
    puts main
end



# 4. Refactored Solution

def essay(title, name, date, subject, heorshe)
    puts title
    
    name = "By #{name}"
    puts name
    
    puts date
    
    puts
    
    thesis = "#{subject} was an influential figure in history. Without #{subject}, our present day would not be what it is."
    puts thesis
    
    puts
    
    main = "#{subject} led an interesting life up until death. #{subject} has also contributed to how our world is today. #{heorshe} managed to gain the attention of others through either actions or words. #{subject}'s qualities in life will always be remembered through our history books. We will never forget #{subject}, for #{heorshe} has had an impact on our world and thus our history."
    puts main
end






# 1. DRIVER TESTS GO BELOW THIS LINE

describe 'essay' do
	let (:essay_1) {["The Great Bill Gates", "Chris Sabato", "03/06/2005", "Bill Gates", "he"]}
	let (:essay_2) {["Impact of Princess Diana", "Sarah Sabato", "05/05/2020", "Princess Diana", "she"]}
	let (:essay_3) {["Martin Luther King", "Gregory Riley", "11/30/2010", "Martin Luther King", "he"]}

	it "is defined" do
    	expect(defined? essay).to eq 'method'
	end

	it "requires 5 arguments" do
    	expect(method(:essay).arity).to eq 5
  	end	
end




# 5. Reflection 

#My strategy was to make something simple and generic to make it easier for anybody to use. I had questions on the driver tests, but I just referred to the previous tests from the previous assignments. I feel confident about all the learning competencies except the last one when it comes to differentiating. I'll have to do more reasearch on that subject. I enjoyed thinking of a generic writing template. During the assignment, I wanted to make something more complicated, but all the research became tedious. Instead of stressing out, I went for a more simple method.
