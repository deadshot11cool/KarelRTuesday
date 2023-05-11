#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "quatrekarel"
require_relative "../karel/robota"

def task()
  world = Robota::World
  world.read_world("../worlds/blancworld.txt")
  
  karel1 = Quatrekarel.new(1, 1, Robota::NORTH, 1)
  karel2 = Quatrekarel.new(6, 1, Robota::EAST, 0)
  karel3 = Quatrekarel.new(6, 6, Robota::SOUTH, 0)
  karel4 = Quatrekarel.new(1, 6, Robota::WEST, 0)
  karel1.bouge5
  karel2.pick_beeper
  karel2.bouge5
  karel3.pick_beeper
  karel3.bouge5
  karel4.pick_beeper
  karel4.bouge5
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