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
    if word[i]==" "
      new_word +=word[i]
      i +=1
    else
      new_word +=word[i].next[0]
      i +=1
    end
  end
  return new_word
end
puts "Test encrypt method"
puts encrypt("abc")
puts encrypt("zed")
puts encrypt("ab cdz")


def decrypt (word)
	alphabets="abcdefghijklmnopqrstuvwxyz"
  i=0
  new_word= ""
  while i< word.length
    if word[i]==" "
      new_word +=word[i]
      i +=1
    else
      new_word +=alphabets[alphabets.index(word[i])-1]
      i +=1
    end
  end
  return new_word
end
puts "Test decrypt method"
puts decrypt("bcd")
puts decrypt("afe")
puts decrypt("ab cdz")