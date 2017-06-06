def display_status
	puts "This message is before the block."
	yield("Nestor","Filmon")
	puts "This message is after the block."
end

display_status {|param1,param2| puts "This is code running from the block, with parameters #{param1} and #{param2}."}