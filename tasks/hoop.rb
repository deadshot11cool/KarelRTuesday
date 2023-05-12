#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "stair_sweeper"
require_relative "../karel/robota"
require_relative "../mixins/triangle"

class Hoop < UrRobot     
    def pick10
    	pick_beeper
    	pick_beeper
    	pick_beeper
    	pick_beeper
    	pick_beeper
    	pick_beeper
    	pick_beeper
    	pick_beeper
    	pick_beeper
    	pick_beeper
    end

    def put10
    	put_beeper
    	put_beeper
    	put_beeper
    	put_beeper
    	put_beeper
    	put_beeper
    	put_beeper
    	put_beeper
    	put_beeper
    	put_beeper
    end

    def move3
    	move 
    	move
    	move
    end
end