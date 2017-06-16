# Define Santa class
# Add instance method speak
# Add instance method eat_milk_and_cookies
# Add initialize method
# Instantiate a Santa object

class Santa
  attr_accessor  :age, :gender, :ethnicity
  def initialize(gender, ethnicity)
    #puts "Initializing Santa instance ..."
    @gender, @ethnicity = gender, ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << reindeer_name
  end
end

# dasher = Santa.new
# dasher.speak
# dasher.eat_milk_and_cookies("snickerdoodle")

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")
# p santas

# Driver code
#==========

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
puts "How many Santas do you want?"
santa_number = gets.chomp.to_i
santa_number.times do 
  gender_index = rand(6)
  ethnicity_index = rand(6)
  santa = Santa.new(example_genders[gender_index], example_ethnicities[ethnicity_index])
  age = 0 + rand(140)
  santa.age = age
  
  puts "\nThis  Santa has the following attributes: "
  puts "Age : #{santa.age}"
  puts "Gender : #{santa.gender}"
  puts "Ethnicity : #{santa.ethnicity}"

end






# puts "Testing the first two Santa instance in the array to make sure they are created "
# 2.times do |index|
#   p santas[index]
# end

# puts "After calling celebrate_birthday :"
# puts "age = #{santas[0].celebrate_birthday}"
# puts
# puts "After calling method get_mad_at :"
# p santas[0].get_mad_at("Dasher")

# puts "After calling gender setter method :"
# puts "gender = #{santas[0].gender = "male"}"

# puts "After calling age getter method :"
# puts "age = #{santas[0].age}"
# puts "After calling ethnicity getter method :"
# puts "ethnicity = #{santas[0].ethnicity}"
