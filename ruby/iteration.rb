def display_status
	puts "This message is before the block."
	yield("Nestor","Filmon")
	puts "This message is after the block."
end

#display_status {|param1,param2| puts "This is code running from the block, with parameters #{param1} and #{param2}."}

#Iteration using .each and .map

grocery=["Apple","Oranges","Cheese","Meat","Bread","Lettuce","Tomato"]

sandwich={:cheese => "Parmesan",:meat => "Turkey",:bread => "Wheat",:lettuce => "Romaine",:Vegie => "Tomato"}

# Using an array
puts "This is the original grocery list:"
grocery.each do |item|
  p item

end

puts"My new grocery list is now(sandwich related):"
grocery.map! do |item|
	if item=="Apple"
		item="Cucumber"
	elsif item=="Oranges"
		item = "Onion"
	else 
		item
	end

end
p grocery

# Using hash
puts "\nUse .each to iterate through hash"
puts "==================================="

sandwich.each do |ingredient,type|
	puts "For my sandwich the #{ingredient} I use is #{type}."
end

puts "Use .map to iterate through hash"
puts "==================================="

sandwich.map do |ingredient,type|
	if ingredient==:meat
		type="Chicken"
	end
	puts "For my sandwich the #{ingredient} I use is #{type}."
end

