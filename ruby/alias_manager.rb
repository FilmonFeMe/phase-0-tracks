#Pseudo code
#==========
#FOR a real name
  #1.Swap first name and last name
  #2. FOR all the letters of the first name
    #convert a vowel to the next vowel
    #convert a consonant to the next consonant
    #leave any other special characters
  #3. Repeat step 2 for last name
  #4. Combine first name and last name
#Repeat steps 1-4  for the next real name entered
# Display real name and corresponding fake name for the entire data entered

#convert a vowel to the next vowel
def next_vowel (vowel)
  vowel_downcase = vowel.downcase

  next_vowel = vowel_downcase.gsub(/[aeiou]/, 'a' => 'e', 'e' => 'i',' i' => 'o', 'o' => 'u', 'u' => 'a')
  if vowel == vowel.upcase
      next_vowel = next_vowel.upcase
  end

  next_vowel
end

#convert a consonant to the next consonant
def next_consonant (consonant)
  consonants  = "bcdfghjklmnpqrstvwxyz"
  consonant_downcase = consonant.downcase

  if consonants.include? consonant_downcase
    index = consonants.index(consonant_downcase)

    # handle edge case for letter 'z'
    if consonant_downcase == "z"
      next_consonant = consonants[0]
    else
      next_consonant = consonants[index + 1]
    end
    #check if the letter is upper case
    if consonant == consonant.upcase
      next_consonant = next_consonant.upcase
    end
  end

  next_consonant
end

#Encrypting method
def encrypt_word(word)
  vowels = "aeiou"
  consonants  = "bcdfghjklmnpqrstvwxyz"
  fake_name = ""
  #change each char to the next char
  word.each do |char|
    if vowels.include? char.downcase
      fake_name << next_vowel(char)
    elsif   consonants.include? char.downcase
      fake_name << next_consonant(char)
    else
      fake_name << char
    end
  end

  fake_name
end

#Swap first and last name
def swap_name(real_name)
  swapped_name = real_name.split(/ /).reverse #split and swap first name and last name
  last_name = swapped_name[0].chars
  first_name = swapped_name[1].chars
  swapped_name = [last_name, first_name] #split characters of the first and last names
end

#main method to fake a name
#Assumptions
#1. no special characters are expected as input
#2. user expected to enter first name and last name separated by space
def fake_name(real_name)
  #call swap name to swap first and last names
  swapped_name = swap_name( real_name)
  last_name = swapped_name[0]
  first_name = swapped_name[1]

  #call encrypting method
  fake_last_name = encrypt_word(last_name)
  fake_first_name = encrypt_word(first_name)

  #concatenate name
  fake_last_name + " " + fake_first_name
end

# Driver code
#==========
def driver_code
  puts "Enter full name (you can hit Enter to continue or type 'quit / q / QUIT / Q' to exit when done). "
  entered_name = gets.chomp
  full_name = Hash.new

  triger_quit = entered_name.downcase == "quit" || entered_name.downcase == "q"

  while  !triger_quit && !entered_name.empty? && entered_name != " "
    real_name = entered_name
    fake_name = fake_name(real_name)
    full_name[real_name] =  fake_name

    puts " "
    puts "Again enter full name (you can hit Enter to continue or type 'quit' to exit when done)."
    entered_name = gets.chomp
    triger_quit = entered_name.downcase == "quit" || entered_name.downcase == "q"
  end

  full_name
end

def display(full_name)
  puts " "
  puts "Display stored data"
  puts "======================="
  full_name.map { |real_name, fake_name| puts "#{real_name} is also known as #{fake_name}." }
end

#call driver code
full_name = driver_code

#call display results
display(full_name)
