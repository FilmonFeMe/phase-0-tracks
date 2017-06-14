#Pseudo code
#==========
#FOR a real name
#1.Swap first name and last name
#2. FOR all the letters of the first name
# => convert a vowel to the next vowel
# => convert a consonant to the next consonant
# => leave any other special characters
#3. Repeat step 2 for last name
#4. Combine first name and last name
#Repeat steps 1-4  for the next real name entered
#Display real name and corresponding fake name for the entire data entered

#Global constant variable
CONSONANTS  = "bcdfghjklmnpqrstvwxyz" 
#convert a vowel to the next vowel
def next_vowel (vowel)
  vowel_downcase = vowel.downcase
  next_vowel = vowel_downcase.gsub(/[aeiou]/, 'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a')
  #Capitalize next letter  if the original letter is upper case
  next_vowel  = capitalize(vowel, next_vowel)
end

#convert a consonant to the next consonant
def next_consonant (consonant)
  consonant_downcase = consonant.downcase
  index = CONSONANTS.index(consonant_downcase)

  # handle edge case for letter 'z'
  if consonant_downcase == "z"
    next_consonant = CONSONANTS[0]
  else
    next_consonant = CONSONANTS[index + 1]
  end
  #Capitalize next letter  if the original letter is upper case
  next_consonant = capitalize(consonant, next_consonant)
end

#Capitalize a letter
def capitalize(original_letter, capitalized_letter)
  if original_letter == original_letter.upcase
    capitalized_letter = capitalized_letter.upcase
  end

  capitalized_letter
end

#Encrypting method
def encrypt_word(word)
  vowels = "aeiou"
  fake_name = ""
  #change each char to the next char
  word.each do |char|
    if vowels.include? char.downcase
      fake_name << next_vowel(char)
    elsif   CONSONANTS.include? char.downcase
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

#Trigger to quit data entry
def trigger_quit(entered_name)
  entered_name.downcase == "quit" || entered_name.downcase == "q"
end

# Driver code
#==========
def driver_code
  full_name = Hash.new

  #Prompt user to enter data repeatedly
  loop do
    puts "Enter full name (you can hit Enter to continue or type 'quit / q / QUIT / Q' to exit when done). "
    entered_name = gets.chomp
    break if  trigger_quit(entered_name)
    begin
      real_name = entered_name
      fake_name = fake_name(real_name)
      full_name[real_name] =  fake_name
    rescue
      puts "\nInvalid input.\n"
    end
  end

  full_name
end

#Display results
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
