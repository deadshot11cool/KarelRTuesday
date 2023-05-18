#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "stair_sweeper"
require_relative "../karel/robota"
require_relative "../mixins/triangle"

class Grinch < UrRobot   
    def go
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
    end

    def go2
        put_beeper
        move
    end

    def turn_right
        turn_left
        turn_left
        turn_left
    end

    def bouge2
        move
        move
    end

    def beeperplace
        put_beeper
        move
        put_beeper
        move
        move
        put_beeper
        move
        put_beeper
    end

    def go3
        put_beeper
        move
        put_beeper
        move
        put_beeper
        move
        put_beeper
    end
end



