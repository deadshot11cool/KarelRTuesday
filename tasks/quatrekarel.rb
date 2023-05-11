#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "stair_sweeper"
require_relative "../karel/robota"
require_relative "../mixins/triangle"

class Quatrekarel < UrRobot     
    def bouge5
        move
        move
        move
        move
        move
        put_beeper
    end
end