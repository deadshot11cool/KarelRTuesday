#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "stair_sweeper"
require_relative "../karel/robota"
require_relative "../mixins/triangle"

module Bc
    class Beton < UrRobot     
        def bouge_7
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
            put_beeper
            move
            put_beeper
        end

        def clock_task
            turn_left
            turn_left
            turn_left
            move
            turn_left
            move
            put_beeper
        end

        def clock_task2
            move
            turn_left
            move
            put_beeper
            turn_left
            turn_left
            turn_left
        end
    end
end