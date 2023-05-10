#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "ligne2"
require_relative "../karel/robota"

include Row
def task()
  world = Robota::World
  world.read_world("../worlds/5beeper.txt")
  
  karel = Fivebeeper.new(5, 4, Robota::EAST, 50)
  karel.turn_left
  karel.move
  karel.move 
  karel.turn_left
  karel.turn_left
  karel.turn_left
  karel.move 
  karel.move
  karel.turn_left
  karel.turn_left
  karel.turn_left
  karel.pafb
  karel.turn_left
  karel.turn_left
  karel.move
  karel.move
  karel.turn_left
  karel.move
  karel.move
  karel.turn_left
  karel.turn_left
  karel.rafb
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