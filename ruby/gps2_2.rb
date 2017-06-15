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
p grocery_list
items = "apple pizza cherry toiletries"
create_list(grocery_list, items)
p grocery_list

# def add_item(grocery_list, item_name, quantity = 1)
# 	grocery_list[item_name] = quantity
# end

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

update_quantity(grocery_list, "apple", 150000)
p grocery_list
display_items(grocery_list)