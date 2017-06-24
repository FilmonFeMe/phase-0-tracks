# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----
# zombie_apocalypse_supplies.each do |value|
#   if value != zombie_apocalypse_supplies.last
#     print " #{value} *"
#   else
#     print "#{value}"
#   end
# end

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# def insertion_sort(array)
#   arr = array
#   i = 1
#   while i < arr.length
#     k = i - 1
#     num = arr[ i]
#     while  k >=0 && num.downcase < arr[k].downcase
#       arr[k], arr [k + 1] = num, arr[ k]
#       k -= 1
#     end
#     i += 1
#   end
#   arr
# end
# puts
# p insertion_sort(zombie_apocalypse_supplies)

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----
# def is_included?(array, name)
#   included = false;
#   array.map do |value|
#     if name == value
#       included = true
#     end
#   end

#   included
# end
# puts
# name = "boots"
# array = zombie_apocalypse_supplies
# puts "Item #{name} is included in #{array} : #{is_included?(array, name)}"

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----
# def delete_item(items)
#   if items.length > 5
#     i = 5
#     while items.length > 5
#       items.pop
#     end
#   end
#   items
# end
# puts
# puts "After deletion from the list of items: "
# print delete_item(zombie_apocalypse_supplies)

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----
p new_suplies_list = (zombie_apocalypse_supplies + other_survivor_supplies).uniq!
# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# puts
# puts "The extinct animals and the year of extinction:"
# puts
# extinct_animals.map {|animal, year| puts "#{animal} : #{year}"}

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----
puts "----------" * 10
puts "The extinct animals and the year of extinction before the year 2000:"
puts
extinct_animals.map do |animal, year|
  if year < 2000
    puts "#{animal} : #{year}"
  end
end

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

extinct_animals.map do |animal, year|
  extinct_animals[animal] = year + 3
end
puts "----------" * 10
puts "The extinct animals and the year of extinction after correction to year:"
puts
extinct_animals.map {|animal, year| puts "#{animal} : #{year}"}
# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----
puts "----------" * 10
puts "Check if certain animals are extinct"

extinct_animals.each_key do |key|
  if key == "Andean Cat"
    print "Andean Cat is extinct"
  elsif key == "Dodo"
    print "Dodo is extinct"
  elsif key == "Saiga Antelope"
    print "Saiga Antelope is extinct"
  end
end

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
def remove_from_list(list)
  list.delete_if do |animal, year|
    animal == "Passenger Pigeon"
  end
end
puts
puts "----------" * 10
puts "Delete Passenger Pigeon from extinct_animals list:"

p remove_from_list(extinct_animals)
