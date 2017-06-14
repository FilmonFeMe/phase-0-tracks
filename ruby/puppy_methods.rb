class Puppy
  def initialize
    puts "Initializing new puppy instance."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times { puts "Woof!"}
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(age)
    age / 7
  end

  def hi_five
    puts "*Raises paw*"
  end

end

#Driver code
skipper = Puppy.new
skipper.fetch("ball")
skipper.speak(4)
skipper.roll_over
puts skipper.dog_years(70)
skipper.hi_five
