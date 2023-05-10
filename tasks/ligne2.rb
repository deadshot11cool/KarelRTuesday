#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "stair_sweeper"
require_relative "../karel/robota"
require_relative "../mixins/triangle"

module Row
    class Fivebeeper < UrRobot     
        def pafb
            pick_beeper
            move
            pick_beeper
            move
            pick_beeper
            move
            pick_beeper
            move
            pick_beeper
        end

        def rafb
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
        end
    end
end