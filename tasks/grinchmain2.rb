#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "grinch2"
require_relative "../karel/robota"

def task()
  world = Robota::World
  world.read_world("../worlds/wooville.txt")
  karel = Grinch2.new(1, 12, Robota::NORTH, 0)
  karel.move
  karel.move
  karel.turn_left
  karel.move
  karel.turn_right
  karel.bouge3
  karel.turn_left
  karel.move
  karel.
end


if __FILE__ == $0
  if $graphical
     screen = window(13, 80) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end