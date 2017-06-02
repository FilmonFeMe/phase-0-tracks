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
#puts "Test encrypt method"
#puts encrypt("abc")
#puts encrypt("zed")
#puts encrypt("ab cdz")


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
#puts "Test decrypt method"
#puts decrypt("bcd")
#puts decrypt("afe")
#puts decrypt("ab cdz")

#Nested Method Call
#This method works because the encrypt method is called and encrypts the word, which
#then returns the encrypted word. This is then passed as an input argument to the decrypt method.
# The decrypt method decrypts the word and returns the original string.
#puts "Nested method call result"
#puts decrypt(encrypt("swordfish"))

#Pseudo code for an Interface
#1. Until the answer is encrypt or decrypt
#Ask the user if they would like to decrypt or encrypt a password
#2. Store the answer in a variable for the required task
#3. Ask the user for the password
#Confirm password
#4. Store the password
#5. For the answer in #2 above
#If the answer is encrypt
#Call encrypt method and pass password as an input argument
#If the answer is decrypt
#call decrypt method and pass password as an input argument
#6. Display the result

# Ask the user for encryption or decryption
puts "Do you want to decrypt or encrypt your password? (decrypt/encrypt)"
password_operation= gets.chomp
while password_operation != "decrypt" && password_operation != "encrypt"
  puts "Do you want to decrypt or encrypt your password? (decrypt/encrypt)"
  password_operation= gets.chomp
end

#Ask the user for the password
puts "Enter your password."
password_original= gets.chomp
puts "Retype your password to confirm."
password_confirm= gets.chomp
while password_original !=password_confirm
  puts "Enter your password."
  password_original= gets.chomp
  puts "Retype your password to confirm."
  password_confirm= gets.chomp
end

#Process the password and print to the console
if password_operation=="encrypt"
 processed_password= encrypt(password_original)
else
 processed_password= decrypt(password_original)
end

#Display result
puts"======================================"
puts "The original password is #{password_original} and the #{password_operation}ed password is #{processed_password}."
