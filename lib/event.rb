require "pry"
require "time"
class Event 
    attr_accessor :start_date, :duration, :title, :attendees
    @attendees = []
    @my_time = Time.now
    
   

    def initialize(start_date, duration, title, attendees)
        @start_date = Time.parse(start_date)
        @duration = duration.to_i 
        @title = title
        @attendees = attendees
        
    end

    def postpone_24h
        @start_date += 3600 * 24
    end

    def end_date
        @end_date = @start_date + @duration*60
    end

    def is_past?
        @my_time = Time.now
        @start_date> @my_time
    end

    def is_future?
        !is_past?
    end

    def is_soon
        @my_time = Time.now
            if is_past? == false
                 @my_time - @start_date < 60*30
            else 
                return "ITS PAST, PLZ WAKE UP"
            end
    end

    def to_s
        puts ">Titre : #{@title}"
        puts ">Date de début : #{@start_date.strftime("%H:%M:%S %d/%m/%Y")}"
        puts ">Durée : #{@duration} minutes"
        puts ">Invités : #{@attendees}"
    end



end
binding.pry
puts "end of file"