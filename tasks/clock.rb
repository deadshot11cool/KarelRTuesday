#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "beton"
require_relative "../karel/robota"

include Bc
def task()
  world = Robota::World
  world.read_world("../worlds/clock.txt")
  
  karel = Beton.new(12, 6.5, Robota::EAST, 50)
  karel.put_beeper
  karel.clock_task
  karel.clock_task
  karel.clock_task
  karel.turn_left
  karel.turn_left
  karel.turn_left
  karel.move
  karel.turn_left
  karel.turn_left
  karel.turn_left
  karel.move
  karel.put_beeper
  karel.clock_task2
  karel.clock_task2
  karel.clock_task
  karel.clock_task
  karel.clock_task
  karel.turn_left
  karel.turn_left
  karel.clock_task2
  karel.clock_task2
  karel.clock_task2
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