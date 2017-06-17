# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(word)
#     word + "!!!"
#   end
# end

# #Driver code
# #==========
# puts Shout::yell_angrily("ohhhh my bad")
# puts Shout::yelling_happily("wow....awesome")

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(word)
    word + "!!!"
  end
end

class Teacher
  include Shout
end

class Student
  include Shout
end

#Driver code
#==========
teacher = Teacher.new
puts teacher.yell_angrily("get out")
puts teacher.yelling_happily("yeah....all of my students passed")

student = Student.new
puts student.yell_angrily("Give me back my pencil")
puts student.yelling_happily("yeah....I passed all of my exams")
