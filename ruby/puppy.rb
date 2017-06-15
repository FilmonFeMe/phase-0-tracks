#Design Puppy class
#==================
# declare class puppy
# add attributes
# add accessors  method
# add initializer method
# add instance methods

class Puppy
  attr_accessor :name, :age, :gender
  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def eat
    puts "The puppy #{ @name} likes to eat raw meat."
  end

  def likes_walking?
    puts "Yes! The puppy #{ @name} likes walking."
  end
end

spot = Puppy.new("Spot", 2, "male")
spot.eat
spot.likes_walking?()
