#Collect data (user is expected to provide valid input data)
puts "What is your name?"
name_answer = gets.chomp
puts "How old are you?"
age =gets.chomp.to_i
puts "What year were you born?"
year_born =gets.chomp.to_i
puts "Should we order some garlic for you?(yes/no)"
input_garlic_order= gets.chomp
while input_garlic_order !="yes" && input_garlic_order !="no"
  puts "Should we order some garlic for you?(yes/no)"
  input_garlic_order=gets.chomp
end
if input_garlic_order=="yes"
  order_garlic= true
else
  order_garlic=false
end

puts "Would you like to enroll in the company’s health insurance?(yes/no)"
input_health=gets.chomp
while input_health !="yes" && input_health !="no"
  puts "Would you like to enroll in the company’s health insurance?(yes/no)"
  input_health=gets.chomp
end
if input_health=="yes"
  order_health= true
else
  order_health=false
end
