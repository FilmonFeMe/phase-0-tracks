# Encrypt method Pseudo code
#=============
# Prompt user input and store value in a variable
# For every character in the string (for index 0 to length of string)do the following
		# If character is space
				# do nothing
		# Otherwise 
				# replace character with character [index + 1]

# Decrypt method Pseudo code
#=======
# Prompt user input and store value in a variable
# For every character in the string (for index 0 to length of string)do the following
		# If character is space
				# do nothing
		# Otherwise 
				# replace character with character [index -1]


def encrypt(word)
	i=0
	new_word= ""
	while i< word.length
		new_word +=word[i].next
			i +=1
		end
return new_word
end

puts encrypt("ab cd")