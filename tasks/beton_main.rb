#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "beton"
require_relative "../karel/robota"

include Bc
def task()
  world = Robota::World
  world.read_world("../worlds/beton.txt")
  
  karel = Beton.new(11, 2, Robota::SOUTH, 50)
  karel.bouge_7
  karel.turn_left
  karel.bouge_7
  karel.turn_left
  karel.bouge_7
  karel.turn_left
  karel.bouge_7
end

if __FILE__ == $0
  if $graphical
     screen = window(13, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end