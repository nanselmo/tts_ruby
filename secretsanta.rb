participants = []

puts "Enter you first participant"

user_entry = gets.chomp

while user_entry != "That's It"
  participants << (user_entry)
  puts "Your current list is #{participants}/nIf you're done, write That's It. Otherwise, add an new participant"
  user_entry=gets.chomp
end

puts participants.length

if participants.length % 2 != 0
  puts "Your have an uneven amount of participants, please enter one more"
  user_entry = gets.chomp
  participants << (user_entry)
end   

puts "Here are your Secret Santa matches"
#try using a hash?
while participants.length>1
  total_spots = participants.length
  random_spot = rand(total_spots)
  partner_1 = participants[random_spot]
  participants.delete_at(random_spot)
  random_spot=rand(total_spots - 1)
  partner_2 = participants[random_spot]
  participants.delete_at(random_spot)
  puts "#{partner_1} & #{partner_2}" ##{} is called interpelation
end

