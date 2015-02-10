
activities = ["Charge Up", "INM", "GP", "IP"]
#use ennumerable

activities.each_with_index do |activity, index|
  minutes = 0
  seconds = 3
  
  while minutes >= 0 && seconds > 0
     puts "Time for your next activity which is " + activities[index].to_s
        while seconds>0
              if seconds >=10
              puts activity + ': ' + minutes.to_s + ':' + seconds.to_s
            else
              puts activity + ': ' + minutes.to_s + ':0' + seconds.to_s
            end
          sleep(1)
          seconds= seconds-1
        end
    minutes = minutes-1
    seconds=60
   
    
  end
end  
puts "Class is over!"



