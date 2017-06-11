#Nested data structures
countries = { 
	"Eritrea" => { 
					continent: "Africa",
					population: 5500000,
					cities_visited: ["Asmara", "Massawa", "Keren", "Mendefera", "Akordat", "Barentu", "Dekemhare"],
					capital_city: "Asmara",
					liked_weather: true,
				},
	"Germany" => {
						continent: "Europe",
						population: 80636124,
						cities_visited: ["Dresden", "Berlin", "Frankfurt", "Leipzig", "Dortmund"],
						capital_city: "Berlin",
						liked_weather: false,
					},

	"USA" => {
						continent: "North America",
						population: 326474013,
						cities_visited: ["San Jose", "San Diego", "San Francisco", "Los Angeles"],
						capital_city: "Washington D.C.",
						liked_weather: true,
				},
	"Netherlands" => {
						continent: "Europe",
						population: 17032845,
						cities_visited: ["Amsterdam", "Rotterdam"],
						capital_city: "Amsterdam",
						liked_weather: true,
					}
}

#Visited continent countries
continent = countries.select {|country, country_info| country_info[:continent] == "Europe"}
puts "The following are visited countries in Europe: #{continent.keys.join(", ")}"

#The most visited country is
number_cities_visited = []

countries.each do |country, country_info| 
	number_cities_visited << [country, country_info[:cities_visited].count]
end

least_visited, most_visited = number_cities_visited.minmax_by { |country| country.last }

puts "The single country with the highest number of cities visited is #{most_visited.first} and the visited cities are #{most_visited.last} in number."
puts "The single country with the lowest number of cities visited is #{least_visited.first} and the visited cities are #{least_visited.last} in number."

#Population count
population = []
countries.map do |country, country_info| 
	population << country_info.fetch(:population)
end

total_population = population.reduce(:+) 
puts "The total population of the countries is #{total_population}"