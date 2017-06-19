#Word Guess Game
#Psedocode
#===============

#create a class for the game

#	#define initializer method for the class
#		#steps: initialize instance variables for the secret word, guessed letter, guessed word and number of attempts
#		# output : instance object with instance variables set to initial values

#	# define update_guessed_word method
#		#input:
#		#steps:
#			# FOR each of secret word array letters
#				# IF letter equals guessed letter
#					#SET guessed word value at index of letter in secret word to guessed letter
#		#output: guessed word
#	# define valid_letter? method
#		#input:
#		#steps:
#			# IF guessed letter is an English alphabet AND included in secret word
#				-return true
#			# otherwise
#				-return false
#		#output: boolean

# 	# define ACCESSOR methods for instance variable attempt number and secret word
# 	# define GETTER method for the guessed word instance variable
# 	# define SETTER method for the guessed letter instance variable

#	#define driver code

class WordGuess
  attr_accessor :attempt_number, :secret_word
  attr_accessor :guessed_word
  attr_writer :guessed_letter

  def initialize
    @secret_word = ""
    @guessed_letter = ""
    @guessed_word = ""
    @attempt_number = 0
  end

  def start_game

  end

  def update_guessed_word
    @secret_word.map.with_index do  |letter, index|
      if letter == @guessed_letter
        @guessed_word[index] = @guessed_letter
      end
    end
  end

    def valid_letter?

    end
  end
