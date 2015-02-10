def respond (feeling)
  if feeling >= 8
    puts "Great Vibes, Glad you're doing well"
  elsif feeling >=5
    puts "Keep the mojo going"
  else
    puts"cheer up!"  
  end
end

puts "How are you doing on a scale of 1-10?"
user_input = gets.chomp.to_i
respond (user_input)