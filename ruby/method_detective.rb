# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
"iNvEsTiGaTiOn".swapcase!
# => “InVeStIgAtIoN”

"zom".sub(/([o])/,'oo')
"zom".sub!(/([o])/,'oo')
# => “zoom”

"enhance".ljust("enhance".length+4).rjust("enhance".length+4+4)
"enhance".center("enhance".length+8) #8 is the sum of left and right white space
# => "    enhance    "

"Stop! You’re under arrest!".upcase
"Stop! You’re under arrest!".upcase!
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".concat(" suspects")
#=> "the usual suspects"

" suspects".prepend("the usual")
# => "the usual suspects"

"The case of the disappearing last letter".delete("r") #works for this case only because the last letter is 'r'
"The case of the disappearing last lette".delete("The case of the disappearing last letter"[-1]) #works for any string even if the last letter is not known
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".delete("The mystery of the missing first letter"[0])
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson! ".gsub(/\s+/," ").strip #.strip is used to remove white spaces at the beginning or end of the string(not useful for this particular string)
"Elementary,    my   dear        Watson! ".split.join(" ")
# => "Elementary, my dear Watson!"

"z".ord
# => 122
# (What is the significance of the number 122 in relation to the character z?)
#It represents the ordinal form of the letter 'z', all characters are represented as integers.

"How many times does the letter 'a' appear in this string?".count("a")
# => 4
