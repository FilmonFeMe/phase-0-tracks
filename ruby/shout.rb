module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(word)
    word + "!!!"
  end
end

#Driver code
#==========
puts Shout::yell_angrily("ohhhh my bad")
puts Shout::yelling_happily("wow....awesome")
