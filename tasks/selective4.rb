#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "../karel/robota"
require_relative "../mixins/lettremix3"
require_relative "../mixins/sensor_pack"
require_relative "../karel/ur_robot"

class Selective < UrRobot   
    include SensorPack
    def go
        if front_is_clear? 
            move
        else
        	turn_left 
        	move
        	turn_left
        end
    end

    def move4
     	if front_is_clear? 
            move
    	else
        	turn_left
        	turn_left
        	turn_left 
        	move
        	turn_left
        	turn_left
        	turn_left
        end
    end

    def scan
    	if next_to_a_beeper?
			pick_beeper
			move
		else
    		go
    	end
    end

    def scan1
    	if next_to_a_beeper?
			pick_beeper
			move
		else
    		move4
    	end
    end

    def scan2
    	scan; scan; scan; scan; scan; scan; scan; scan; scan; scan; 
    end

    def scan3
    	scan1; scan1; scan1; scan1; scan1; scan1; scan1; scan1; scan1; scan1
    end


   def scan4
	scan1; scan1; scan1; scan1; scan1; scan1; scan1; scan1; scan1; scan5; scan
   end

  def scan5
    	if next_to_a_beeper?
			pick_beeper
		else
    		go
    	end
    end

    def bouge9
        turn_left
        move; move; move; move; move; move; move; move; move; put_beeper; put_beeper
    end

    def bouge8
        turn_left
        move; move; move; move; move; move; move; move; put_beeper; put_beeper
    end
end