#Pseudo code
#==========
# Prompt client to provide information
#Store client data in hash
#Display client data
#Prompt client to modify any key in the hash
# Re-display client data


def client_info
  client_data = { name: nil, age: nil, children_number: nil, children_name: [], decor_theme: nil, urban_resident: nil}

  puts "What is your name?"
  client_data[:name] = gets.chomp
  puts "\nHow old are you?"
  client_data[:age] = gets.chomp.to_i
  puts "\nHow many children do you have?"
  client_data[:children_number] = gets.chomp.to_i
  puts "\nWhat is/are the name/s of your child/children?"
  client_data[:children_name][0] = gets.chomp.to_s
  i = 1
  while i < client_data[:children_number] 
    puts "\nEnter  more child name"
    client_data[:children_name][i] = gets.chomp.to_s
    i += 1
  end
  puts "\nWhat is your preferred decor theme?"
  client_data[:decor_theme] = gets.chomp
  puts "\nAre you an urban resident?('y' for yes or 'n' for no)"
  is_urban_resident = gets.chomp.downcase

  if is_urban_resident == "y" || is_urban_resident == "yes"
    client_data[:urban_resident] = true
  else is_urban_resident == "n" || is_urban_resident == "no"
    client_data[:urban_resident] = false
  end

  client_data
end


def display_info(client_data, state)
  puts "\nDisplay client #{state} data"
  puts "======================="
  client_data.map do |key, value|
    if value.kind_of?(Array) && value.length > 1
      names = ""
      for i in 0...value.length
        if i == 0 || i == value.length
          names = names + value[i]
        else
          names = names + ", " + value[i]
        end
      end
      puts "#{key} : #{names}"
    else
      puts "#{key} : #{value}"
    end
  end
end
#call method to request client info
client_data = client_info
#call method to display client info
display_info(client_data, "original")

def modify_key(client_data)
  puts "\nDo you want to update key?('y' for yes or 'n' for no)"
  update_key = gets.chomp.downcase
  if update_key == "y" || update_key == "yes"
    puts "\nEnter the key that needs updating"
    old_key = gets.chomp.to_sym
    puts "\nEnter the new key"
    new_key = gets.chomp.to_sym
    client_data[new_key] = client_data.delete old_key
    display_info(client_data, "updated")
  else update_key == "n" || update_key == "no"
    puts "No update needed."
  end

end

modify_key(client_data)
