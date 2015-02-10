puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "     WELCOME TO STA TRIVIA        "
puts"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

qna = {
            "What type of heat transfer ocurrs in solids?" => "conduction",
            "What type of heat transfer ocurrs in liquids and gasses?" =>"convection",
            "What type of heat transfer occurs in waves in space?" =>"radiation"
          }

qna.to_a.shuffle.each do |current_data|
current_question = current_data.first
  current_answer = current_data.last

  puts current_question
  answer=gets.chomp

    if answer.downcase == current_answer.downcase
      puts "That is correct!"
     else
     puts "#{answer}!!! Really?!? The answer was #{current_answer}" 
    end
end

  
puts "Thanks for Playing"


