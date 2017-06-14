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
# skipper = Puppy.new
# skipper.fetch("ball")
# skipper.speak(4)
# skipper.roll_over
# puts skipper.dog_years(70)
# skipper.hi_five

class BasketBallPlayer
  def initialize(name)
    @player_name = name
  end

  def get_name
    puts "The basket ball player's name is : #{@player_name}"
  end

  def cheer
    puts "Go score #{@player_name} !"
  end
end

# driver code
team_roster = []

50.times { team_roster << BasketBallPlayer.new("MJ") }

team_roster.each do | basketball_player |
  basketball_player.get_name
  basketball_player.cheer
end
