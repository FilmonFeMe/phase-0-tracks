# Define Santa class
# Add instance method speak
# Add instance method eat_milk_and_cookies
# Add initialize method
# Instantiate a Santa object

class Santa
  def initialize
    puts "Initializing Santa instance ..."
   end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end
end

dasher = Santa.new
dasher.speak
dasher.eat_milk_and_cookies("snickerdoodle")