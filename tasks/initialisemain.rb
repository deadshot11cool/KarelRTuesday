#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "initialisetache"
require_relative "../karel/robota"
def task()
  world = Robota::World
  world.read_world("../worlds/5beeper.txt")
  
  karel = Initialisetache.new(5, 4, Robota:: EAST, 50)
  karel.moveturn
  karel.moveturn
  karel.moveturn
end

if __FILE__ == $0
  if $graphical
     screen = window(13, 60) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end