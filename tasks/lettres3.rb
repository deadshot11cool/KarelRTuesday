#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "stair_sweeper"
require_relative "../karel/robota"
require_relative "../mixins/lettremix3"

class H1 < UrRobot   
    include Lemix
    def lettre
        move_beep
        turn_left
        move2 
        turn_around
        move_beep
        move_beep
        move_beep1
        put_beeper
        turn_right
        move3 
        turn_right
        move_beep
        move_beep
        move_beep
        turn_off
    end
end


class E1 < UrRobot
    include Lemix
    def lettre
        move_beep
        move_beep
        move_beep1
        put_beeper
        turn_right
        move
        move_beep1
        put_beeper
        turn_right
        move2
        turn_right
        move_beep1
        put_beeper
        turn_left
        move3
        turn_left
        move_beep
        turn_off
    end
end


class L1 < UrRobot
    include Lemix
    def lettre
        move_beep
        move_beep
        move_beep1
        turn_left
        move_beep
        move_beep1
    end
end

class O1 < UrRobot
    include Lemix
    def lettre
        move_beep
        turn_right
        move_beep
        move_beep
        move_beep1
        turn_right
        move_beep
        turn_right
        move_beep
        move_beep
        move_beep1
        move
        turn_off
    end
end

