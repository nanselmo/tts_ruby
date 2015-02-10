minutes = 0

activities = ["Charge Up","Charge Up Review", "INM", "GP", "IP", "Prove It"]
activity_time = [7,2,2,6,6,1]
#use ennumerable



  #puts "#{activities[index+1]} + #{minutes} + #{seconds}"
activities.zip(activity_time).each_with_index do |activity, time, index|   
      seconds = activity[1]
      minutes = 0
      puts activity[0].to_s
      puts "time = #{time}"
      puts "index = #{time} "
        while minutes >= 0 && seconds > 0
            while seconds>0
                  if seconds >=10
                  puts activity[0].to_s + ': ' + minutes.to_s + ':' + seconds.to_s
                else
                  puts activity[0].to_s  + ': ' + minutes.to_s + ':0' + seconds.to_s
                end
              sleep(1)
              seconds= seconds-1
            end
            minutes = minutes-1
            seconds=60
            #puts "Time for your next activity which is" + activities[index+1].to_s
            #seconds = time[index+1]
        end
    
end
puts "Class is over!"



