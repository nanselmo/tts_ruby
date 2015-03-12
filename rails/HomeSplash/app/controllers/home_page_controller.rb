class HomePageController < ApplicationController
  def index
    time = Time.now
    #uses the stamp method to help format it to match the string "3:00AM"
    @current_time = time.stamp("3:00 AM")
    @greet_message = case Time.now.hour
                      when 5..11
                        "Good Morning!"
                      when 12..15
                        "Good Afternoon"
                      when 16..19
                        ["Good Evening", "Working Hard!"].sample
                      when 20..23, 0..4
                         "Goodnight"
                      end    
    date = Date.current 
    @current_date = date.stamp("Sun Aug 16th")
                      
  end
end
