#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "grinch"
require_relative "../karel/robota"

def task()
  world = Robota::World
  world.read_world("../worlds/blancworld.txt")
  karel = Grinch.new(1, 6, Robota::NORTH, 100)
  karel.go
  karel.move
  karel.go2
  karel.go2
  karel.turn_left
  karel.bouge2
  karel.turn_left
  karel.bouge2
  karel.bouge2
  karel.bouge2
  karel.turn_left
  karel.beeperplace
  karel.move
  karel.turn_right
  karel.move
  karel.turn_right
  karel.go2
  karel.beeperplace
  karel.move
  karel.go2
  karel.turn_left
  karel.turn_left
  karel.bouge2
  karel.move
  karel.turn_left
  karel.bouge2
  karel.go3
  karel.turn_right
  karel.bouge2
  karel.turn_right
  karel.go3
end


if __FILE__ == $0
  if $graphical
     screen = window(11, 80) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end