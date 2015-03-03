class HomePageController < ApplicationController
  def index
    @current_time = Time.now.to_formatted_s(:short)
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
                      
  end
end
