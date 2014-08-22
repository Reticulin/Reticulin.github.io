# U3.W8-9: What the Scope


# I worked on this challenge [by myself, with: ].



# Original Code
#
#$var_1 = 22
# 
#class Person
#  @@var_2
#  VAR_6 = "Ruby"
# 
#  attr_reader :var_3, :var_4
# 
#  def initialize(var_5 = VAR_6)
#    @var_3="Law of Demeter"  
#  end
# 
#  def do_stuff(var_7=[1,2,3])
#    var_7.each do |var_8|
#      var_9 += var_8 + 2
#    end
#  end
#end

# 1. Modified Code (with scope identified as comments)
$var_1 = 22 #global variable that stays constant throughout the entire ruby program

class Person
  @@var_2 #class variable that is shared among all instances of the class, in this case, the Person class
  VAR_6 = "Ruby" # a local variable which can't be accessed outside this code of construct
  attr_reader :var_3, :var_4#variables set as readers in order to call them outside the object

  def initialize(var_5)#local variable for the initialize method
    var_5 = VAR_6 #since VAR_6 was a local variable at the beginning of the object, it is not defined for this method
    var_3 = "Law of Demeter"#local variable that can only be called within this method
  end

  def do_stuff(var_7)#local variable for the do_stuff method
    var_7 = [1,2,3] #setting an array of numbers to the local variable var_7
    var_7.each do |var_8|#looping through var_7 which will output each number which is symbolized by var_8
      var_9 = var_8 + 2 #var_9 gets the output of the previous loop plus 2
    end
  end
end




# 0 & 3. Call the methods here. Later, come back and add tests
x = Person.new(5)
x.do_stuff(5)

# What are the problems in the error messages?



# 2. What is the scope of each variable?
#$var_1 is a global variable
#@@var_2 is a class variable
#var_3 is an instance variable
#var_4 is currently only set as an attr_reader, but would probably be an instance variable just like var_3
#var_5 is a local variable
#var_6 is a local variable twice
#var_7 is a local variable
#var_8 is a local variable
#var_9 is a local variable


# 4. Reflection 
#Seemed challenging at first, but I was able to get it working. I never really appreciated user stories until today. It's hrd to try and fix a code without knowing what purpose it serves.
