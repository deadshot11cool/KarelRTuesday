#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "lettres2"
require_relative "../karel/robota"

def task()
  world = Robota::World
  world.read_world("../worlds/blancworld.txt")
  
  karel = H1.new(5, 2, Robota::EAST, 100)
  karel.lettre

  bob = E1.new(2, 6, Robota::NORTH, 100)
  bob.lettre

  jacksparrow = L1.new(7, 10, Robota::SOUTH, 100)
  jacksparrow.lettre
  jacksparrow.move
  jacksparrow.turn_left
  jacksparrow.move 
  jacksparrow.move 
  jacksparrow.move 
  jacksparrow.move 
  jacksparrow.move 
  jacksparrow.turn_left
  jacksparrow.turn_left
  jacksparrow.lettre
  jacksparrow.turn_off


  edwardteach = O1.new(7, 19, Robota::EAST, 100)
  edwardteach.lettre
end

if __FILE__ == $0
  if $graphical
     screen = window(22, 100) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end