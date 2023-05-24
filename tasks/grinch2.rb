#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "stair_sweeper"
require_relative "../karel/robota"
require_relative "../mixins/triangle"

class Grinch2 < UrRobot   

    def turn_right
        turn_left
        turn_left
        turn_left
    end

    def bouge3
        move
        move
        move
    end

    def grab2
        pick_beeper
        pick_beeper
    end

    def beepergrab
        turn_left
        move
        move
        turn_right
        move
        turn_left
        move
        move
        grab2
        turn_right
        move
        grab2
        turn_right
        turn_right
        move
        turn_left
        move 
        move
        turn_right
        move
        turn_left
        move
        move
        turn_left
    end

    def beepergrabrow
        beepergrab
        bouge3
        beepergrab
        bouge3
        beepergrab
        go_back
    end

    def go_back
        turn_left
        turn_left
        bouge3
        bouge3
        bouge3
    end

    def go3
        turn_left
        bouge3
        bouge3
        turn_left
        bouge3
        beepergrabrow
    end

    def put_beeper2
        put_beeper
        put_beeper
    end

    def put_beeper3
        put_beeper2
        put_beeper2
        put_beeper2
        put_beeper2
        put_beeper2
        put_beeper2
    end

end



