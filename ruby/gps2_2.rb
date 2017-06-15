# Initialize list
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
#  	# break up a string into an array
# 	# populate the hash
# 	# set default quantity
#  	# print the list to the console [use print method]
# output: hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
#	# add item to list as key
#	# add corresponding quantity as a value
# output: hash

# Method to remove an item from the list
# input: list, item name
# steps:
#	# DELETE key-value pair from the list
# output: hash

# Method to update the quantity of an item
# input: list, item name, new quantity
# steps:
#	# SET the value of the specific item name equal to the item quantity
# output: hash

# Method to print a list and make it look pretty
# input: list
# steps:
#	# ITERATE  through the hash and display the item name and item quantity
# output: nil

grocery_list = { } # initialize list

def display_items(grocery_list)
  puts "\nThe Grocery List"
  puts  "=============== "
  grocery_list.each do |item_list, quantity|
    puts "Please buy #{quantity} of #{item_list}."
  end
end

def create_list( grocery_list, items)
  item_array = items.split(" ")
  item_array.each { |item| grocery_list[item] = 1}
  display_items(grocery_list)

  grocery_list
end
# grocery_listp grocery_list
# items = "apple pizza cherry toiletries"
# create_list(grocery_list, items)
# p 

def add_item(grocery_list, item_name, quantity = 1)
	grocery_list[item_name] = quantity
end

# item_name = "apple"
# quantity = 5
# p grocery_list
# add_item(grocery_list, item_name, quantity)
# p grocery_list

def remove_item(grocery_list, item_name)
  grocery_list.delete(item_name)
end

def update_quantity(grocery_list, item_name, quantity)
  grocery_list[item_name] = quantity
end

# update_quantity(grocery_list, "apple", 150000)
# p grocery_list
# display_items(grocery_list)

#DRIVER CODE
puts "What will you buy?"
buy_items = gets.chomp
create_list(grocery_list, buy_items)

puts "Anything else? (Type none if done)."
else_item = gets.chomp 
unless else_item == "none" 
	add_item(grocery_list, else_item)
end
display_items(grocery_list) 

puts "Would you like to update the quantities for these items? If so, type the item and the quantity. If no, type 0."
new_quantity = gets.chomp.split(" ")
unless new_quantity[0] == "0" || !grocery_list.has_key?(new_quantity[0])
	update_quantity(grocery_list, new_quantity[0], new_quantity[1])
end

display_items(grocery_list)
puts "\nAre you sure about all of this? If you'd like to remove an item, please type it. If not, type no."
items_remove = gets.chomp 

unless items_remove == "no" || !grocery_list.has_key?(items_remove)
	remove_item(grocery_list, items_remove)
end

display_items(grocery_list)

