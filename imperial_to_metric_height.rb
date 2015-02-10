def convert_inches_to_centimeters(number) ##start method, number is the argument
  height_centimeters = number * 2.54
  return height_centimeters
end

def convert_feet_to_pounds(number) ##start method, number is the argument
  height_centimeters = number * 0.453592
  return height_centimeters
end

puts "What is your name?"

my_name = gets.chomp

puts "What is your height in inches?"

height_centimeters= convert_inches_to_centimeters(gets.chomp.to_i)


puts "What is your weight in pounds?"

weight_kilograms = convert_feet_to_pounds(gets.chomp.to_i)


#height_centimeters = height_inches * 2.54

#weight_kilograms = weight_pounds * 0.453592

puts my_name + ' is ' + height_centimeters.to_s + ' cm and '+ weight_kilograms.to_s[0..4] + ' kg.'