#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "stair_sweeper"
require_relative "../karel/robota"
require_relative "../mixins/triangle"

class H1 < UrRobot   
    def lettre
        put_beeper
        move
        put_beeper
        move
        turn_left
        move 
        move
        turn_left
        turn_left
        put_beeper
        move
        put_beeper
        move
        put_beeper
        move  
        put_beeper
        move
        put_beeper
        move
        put_beeper
        turn_left
        turn_left
        turn_left
        move 
        move
        move
        turn_left
        turn_left
        turn_left
        put_beeper
        move
        put_beeper
        move
        put_beeper
        move
        put_beeper
        move 
        put_beeper
        move
        put_beeper
        move
        turn_off
    end
end


class E1 < UrRobot
    def lettre
        put_beeper
        move 
        put_beeper
        move 
        put_beeper
        move
        put_beeper
        move
        put_beeper
        move
        put_beeper
        turn_left
        turn_left
        turn_left
        move
        put_beeper
        move
        put_beeper
        turn_left
        turn_left
        turn_left
        move
        move
        turn_left
        turn_left
        turn_left
        put_beeper
        move
        put_beeper
        turn_left
        move
        move
        move
        turn_left
        put_beeper
        move
        put_beeper
        move
        turn_off
    end
end


class L1 < UrRobot
    def lettre
        put_beeper
        move
        put_beeper
        move
        put_beeper
        move
        put_beeper
        move
        put_beeper
        move
        turn_left
        put_beeper
        move
        put_beeper
        move
        put_beeper
        move 
    end
end

class O1 < UrRobot
    def lettre
        put_beeper
        move
        put_beeper
        move
        turn_left
        turn_left
        turn_left
        put_beeper
        move
        put_beeper
        move
        put_beeper
        move
        put_beeper
        move
        put_beeper
        move
        turn_left
        turn_left
        turn_left
        put_beeper
        move
        put_beeper
        move
        turn_left
        turn_left
        turn_left
        put_beeper
        move
        put_beeper
        move
        put_beeper
        move
        put_beeper
        move
        put_beeper
        move
        move
        turn_off
    end
end

