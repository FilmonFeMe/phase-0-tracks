# Virus Predictor

# I worked on this challenge by myself  with guide Laura Streb
# I spent approximately 1.5 hours on this challenge.

# EXPLANATION OF require_relative
# require_relative : specifies file path relative to current file where the require_relative is placed.
#
require_relative 'state_data'

class VirusPredictor

  def self.virus_predictor(state_data)
    state_data.each do |state, data|
      new(state, data[:population_density], data[:population]).virus_effects
    end
  end

  # Initializes instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # call private methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # calculates number of deaths
  def predicted_deaths
    # predicted deaths is solely based on population density
    death_factor = case @population_density
    when 200.00..10357.00
      0.4
    when 150.00..199.99
      0.3
    when 100.00..149.99
      0.2
    when 50.00..99.99
      0.1
    else
      0.05
    end

    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    number_of_deaths = (@population * death_factor).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # calculates the speed of disease spread
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    speed_factor = case @population_density
    when 200.00..10357.00
      0.5
    when 150.00..199.99
      1.0
    when 100.00..149.99
      1.5
    when 50.00..99.99
      2.0
    else
      2.5
    end

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

    speed += speed_factor
    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each states
VirusPredictor.virus_predictor(STATE_DATA)

# STATE_DATA.each do |state, data|
#   VirusPredictor.new(state, data[:population_density], data[:population]).virus_effects

# end
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
#-----------------------------------
# What are the differences between the two different hash syntaxes shown in the state_data file?
# => # the outer one uses strings as keys and the inner(nested hash) uses symbols as keys. Using strings as keys may be useful if we want to display the keys, for example "New York", if that is a symbol it would have been like this 'new_york', which is not good for displaying keys on the console. Using symbols as keys has two advantages, takes less memory storage and helps efficient usage as they are immutable(not changeable) where as strings are mutable (changeable) hence need many creations of the same string every time it is referenced with in the program. 

# What does require_relative do? How is it different from require?
#    # require_relative loads or imports contents of one file to another file.  
#    # require is usually used to import from Ruby"s library path (us './' with file path), i.e. files properly installed and made accessible in the system.

# What are some ways to iterate through a hash?
#    # we can use the built in methods 'each' or 'map' to iterate through a hash referencing to the keys and values. If only keys are needed we can use 'keys' , and for values 'values' built in methods. For example,
#            # hash.each do |key, value|
#             #.......some code here........
 #           # end

# When refactoring virus_effects, what stood out to you about the variables, if anything?
#    # Instance variables (declared with '@' before them) are accessible anywhere with in the class they are declared in. No need to pass them as arguments to methods, methods with in the class can access them directly regardless if the method is private, public or class method.

# What concept did you most solidify in this challenge?
#    # I have learned the DRY principle more clearly, the difference between require_relative and require,  and the instantiation of a class within itself using a class method. 
