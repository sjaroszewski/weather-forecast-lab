# Your methods should take in a hash as an argument - here's an example of what the hash will look like - the methods should take this hash as an argument and return the desired output.



weather = {
     :city => "New York",
    :description => "Partly Cloudy",
    :temperature_farenheit => 66.3
}

# 1. Complete the method below called location, that accepts a hash called weather as an argument so that it returns the value of city from the weather hash. 
def location(weather_hash)
    puts weather_hash[:city]
end

puts location(weather)

# 2. Using the location method as a guide, write a  method called "description" so it returns the description from the weather hash. 
def description(weather_hash)
    puts weather_hash[:description]
end

puts description(weather)

# 3. Using the methods above and string interpolation, update the method below so that it returns a string that describes the current weather - for example: "The weather in New York is Partly Cloudy. The temperature is 66.1 degrees Farenheit." HINT: the method should RETURN the string, not print it to the terminal.

def method(weather_hash)
    puts "The weather in #{weather_hash[:city]} is #{weather_hash[:description]}. The temperature is #{weather_hash[:temperature_farenheit]} degrees Farenheit."
end

puts method(weather)

#4. Write a method that takes in the weather hash as an argument. 
# You'll want to use the each method to iterate over the hash and print out
# `The city is New York.` `The description is Partly Cloudy.` `The temperature is 66.3.`

def weather(weather_hash)
    weather_hash.each do |key, value|
        puts "The #{key} is #{value}"
    end
end    

weather(weather)

# BONUS:  Write a method that takes in the weather hash as an argument and converts the farenheit temperature to celcius. Have the method round your answer to two decimal places. Is there a method we can use to round in Ruby?

def celcius(temp_hash)
    ((temp_hash[:temperature_farenheit]-32.0)*5.0)/9.0
end

puts "The temperature is #{celcius(weather).round(2)} in Celsius"

   

# Hint - how can we find the algorithm to convert Farenheit to Celsius?