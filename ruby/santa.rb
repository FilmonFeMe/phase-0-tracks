# Define Santa class
# Add instance method speak
# Add instance method eat_milk_and_cookies
# Add initialize method
# Instantiate a Santa object

class Santa
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
end

# dasher = Santa.new
# dasher.speak
# dasher.eat_milk_and_cookies("snickerdoodle")

santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
p santas