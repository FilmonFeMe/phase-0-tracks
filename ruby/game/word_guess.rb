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
    @guessed_word = []
    @attempt_number = 0
  end

  def start_game
    secret_word_length = @secret_word.length
    @secret_word = @secret_word.split("")
    @guessed_word =Array.new(secret_word_length, "_" )
  end

  def update_guessed_word
    @secret_word.map.with_index do  |letter, index|
      if letter == @guessed_letter
        @guessed_word[index] = @guessed_letter
      end
    end
  end

  def valid_letter?
    if "abcdefghijklmnopqrstuvwxyz".include?(@guessed_letter) && @secret_word.include?(@guessed_letter)
      true
    else
      false
    end
  end
end

#Driver Code
#=========
game = WordGuess.new
puts "\nFirst player, please provide a secret word: "
game.secret_word = gets.chomp.downcase
#Start game is invoked
game.start_game

game_difficulty_level = 1 #set a default easy game difficulty level
while !game_difficulty_level.is_a?(Integer)
  puts "\nSecond player, please select game difficulty level ( type 1 for easy, 2 for intermediate or 3 for hard)."
  game_difficulty_level = gets.chomp.to_i
end

# Select game difficulty level
case game_difficulty_level
when 1
  max_attempts = game.secret_word.uniq.length * 3
when 2
  max_attempts = game.secret_word.uniq.length * 2
when 3
  max_attempts = game.secret_word.uniq.length * 1
end

puts "The word to be guessed has the following characters."
puts game.guessed_word.join(" ")


loop do
  puts "You have #{max_attempts  - game.attempt_number} attempt(s) remaining."
  puts "Please type any letter that you think is in the secret word."
  game.guessed_letter = gets.chomp.downcase
  if game.valid_letter?
    game.update_guessed_word
    puts "\nYour word is now : "
  end

  p game.guessed_word.join(" ")
  game.attempt_number += 1
  if game.guessed_word.join == game.secret_word.join && game.attempt_number <= max_attempts
    puts "=========================="
    puts "\nCongratulations ! You guessed the word in #{game.attempt_number} attempts. \nRe-run game to play again."
    break
  end
  if game.attempt_number >= max_attempts
    puts "\nSorry, you lost. You have reached the maximum number of attempts. \nRe-run game to play again."
    break
  end
end
