# def display_status
# 	puts "This message is before the block."
# 	yield("Nestor","Filmon")
# 	puts "This message is after the block."
# end

# #display_status {|param1,param2| puts "This is code running from the block, with parameters #{param1} and #{param2}."}

# #Iteration using .each and .map

# grocery=["Apple","Oranges","Cheese","Meat","Bread","Lettuce","Tomato"]

# sandwich={:cheese => "Parmesan",:meat => "Turkey",:bread => "Wheat",:lettuce => "Romaine",:Vegie => "Tomato"}

# # Using an array
# puts "This is the original grocery list:"
# grocery.each do |item|
#   p item

# end

# puts"My new grocery list is now(sandwich related):"
# grocery.map! do |item|
# 	if item=="Apple"
# 		item="Cucumber"
# 	elsif item=="Oranges"
# 		item = "Onion"
# 	else 
# 		item
# 	end

# end
# p grocery

# # Using hash
# puts "\nUse .each to iterate through hash"
# puts "==================================="

# sandwich.each do |ingredient,type|
# 	puts "For my sandwich the #{ingredient} I use is #{type}."
# end

# puts "Use .map to iterate through hash"
# puts "==================================="

# sandwich.map do |ingredient,type|
# 	if ingredient==:meat
# 		type="Chicken"
# 	end
# 	puts "For my sandwich the #{ingredient} I use is #{type}."
# end

#Use delte_if method

number_array=[1,2,3,4,5,6,7,8,9,10]
puts "The original array is:"
p number_array

puts "Result after iteration of array is:"

p number_array.delete_if{|num| num<5}

puts "The original array after call of the method is:"
p number_array



numbers_to_words={1=>"one",2=>"two",3=>"three",4=>"four",5=>"five",6=>"six",7=>"seven",8=>"eight",9=>"nine",10=>"ten"}
puts "The original hash is:"
p numbers_to_words

puts "Result after iteration of hash is:"

p numbers_to_words.delete_if{|num,word| num<5}

puts "The original hash after call of the method is:"
p numbers_to_words


#Use keep_if method











