# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: Josh Nixon






# Our Refactored Solution

def bakery_num(people, fav)
    my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
    pie = 0
    cake = 0
    cookie = 0
    
# put in quantity of each food
  
  # defines which pastries were are preparing for.
  # default values are set to 0
  
  if my_list.has_key?(fav)
      fav_qty = my_list.values_at(fav)[0]
      if people % fav_qty == 0
        food_qty = people / fav_qty
        return "You need to make #{food_qty} #{fav}(s)."
      else people % fav_qty != 0
        while people > 0
        if people / my_list["pie"] > 0
          #if people that want diveded by number of servings is greater than 0
          pie = people / my_list["pie"]
          #the type equals the number of people diveded by the number of servings
          people = people % my_list["pie"]
          #this takes out the people that are eating pie and leaving the remainder
        elsif people / my_list["cake"] > 0
          cake = people / my_list["cake"]
          people = people % my_list["cake"]
        else
          cookie = people
          people = 0
        end
      end
        return "You need to make #{pie} pie(s), #{cake} cake(s), and #{cookie} cookie(s)."
        end
    else
      raise ArgumentError.new("You can't make that food")
  end
end
 
 # defines if person has a favorite food.
 # if food requested is not on our list returns that we can't make that food.
 # if the food requested is on the list then it tells the quantity that we have of that food.
 # if we have the favorite food, then it divides the number of people that want it by the servings per dish and tells us how many of the dish to make and what type of dish.
 # if there is a remainder, then it will go through each key of the hash in order to determine the amount and type of food needed.
 







#DRIVER TEST CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver test code. Why? Because it doesn't make sense.
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!




#  Reflection 
#Our strategy was to go through each release and break down the code to better understand it. Once we broke it down, we wrote comments explaining what each part was supposed to do. It was a good experience and I had fun with my partner. Our instructor was great! She dropped hints and asked us questions to help us learn and improve our knowledge. It was a good and enlightening experience.


