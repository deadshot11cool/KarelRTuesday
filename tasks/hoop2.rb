#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "hoop"
require_relative "../karel/robota"

def task()
  world = Robota::World
  world.read_world("../worlds/hoop.txt")
  
  karel = Hoop.new(2, 5, Robota::EAST, 0)
  karel.turn_left
  karel.turn_left
  karel.move3
  karel.turn_left
  karel.turn_left
  karel.turn_left
  karel.move3
  karel.move3
  karel.turn_left
  karel.turn_left
  karel.turn_left
  karel.move
  karel.pick10
  karel.turn_left
  karel.turn_left
  karel.move
  karel.pick10
  karel.turn_left
  karel.move
  karel.pick10
  karel.move3
  karel.move
  karel.move
  karel.turn_left
  karel.move3
  karel.move
  karel.turn_left
  karel.move
  karel.move
  karel.turn_left
  karel.move3
  karel.turn_left
  karel.move
  karel.pick10
  karel.turn_left
  karel.turn_left
  karel.move3
  karel.turn_left
  karel.turn_left
  karel.turn_left
  karel.move3
  karel.move3
  karel.turn_left
  karel.move3
  karel.move
  karel.move
  karel.turn_left
  karel.turn_left
  karel.turn_left
  karel.move
  karel.turn_left
  karel.turn_left
  karel.turn_left
  karel.move
  karel.put10
  karel.put10
  karel.put10
  karel.put10
  karel.turn_left
  karel.turn_left
  karel.move

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