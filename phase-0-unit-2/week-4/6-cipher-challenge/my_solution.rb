# U2.W4: Cipher Challenge


# I worked on this challenge with: David Christian .



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.


=begin
def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("")# splitting characters into array # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  decoded_sentence = [] #creating an array
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c", 
            "h" => "d", 
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
            
  input.each do |x| # What is #each doing here?: Takes the first encrypted letter/symbol
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?:Doesnt work, acts as a filter.
    cipher.each_key do |y| # What is #each_key doing here?:It's going to go through the hash.
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        found_match = true
        break # Why is it breaking here?
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?:going through a boolean to determine if one of those symbols matches, if so add a space
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match  # What is this looking for?
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. 
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  end  
  return decoded_sentence # What is this returning?        
end
=end
# Your Refactored Solution

def north_korean_cipher(coded_message)
    alphabet = ('a'..'z').to_a
    cipher = Hash[alphabet.rotate(4).zip(alphabet)]
    input = coded_message.downcase.split("")
    decoded_sentence = []

    input.each do |x| # What is #each doing here?: Takes the first encrypted letter/symbol
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?:Doesnt work, acts as a filter.
    cipher.each_key do |y| # What is #each_key doing here?:It's going to go through the hash.
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
        decoded_sentence << cipher[y]
        found_match = true
        break
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?:going through a boolean to determine if one of those symbols matches, if so add a space
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? Checks if a number is present in the encrypted message, if so then it outputs the number into the decrypted message.
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match  # What is this looking for?:If a symbol or character is found that is not defined, it outputs that character/symbol to the decrypted message
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. :It's looking for a number
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...:Takes that number and divides by 100
  end  
  return decoded_sentence # What is this returning? :returns the decrypted message     
end






# Driver Test Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver test code as well. Driver test code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

# Reflection
=begin
Our strategy for this assignment was to just break down each line of code and explain between us. By working together, we were able to be efficient in solving each line of code and bouncing ideas off each other. Didn't find this assignment tedious probably due to working with a partner. It was great to have somebody else's insight and hear their thought process. 
=end