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
