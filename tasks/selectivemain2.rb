#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "selective2"
require_relative "../karel/robota"

def task()
  world = Robota::World
  world.read_world("../worlds/wooville.txt")
  
  karel = Selective.new(3, 11, Robota::EAST, 100)
  karel.move
  karel.move
  karel.move
  karel.move
end

if __FILE__ == $0
  if $graphical
     screen = window(12, 50) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end