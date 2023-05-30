#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "selective3"
require_relative "../karel/robota"

def task()
  world = Robota::World
  world.read_world("../worlds/aleatoire.txt")
  
  karel = Selective.new(11, 2, Robota::SOUTH, 100)
  karel.scan2
  karel.scan3
  karel.scan2
  karel.scan3
  karel.scan4
  karel.scan3
  karel.scan2
  karel.scan3
  karel.scan2





end

if __FILE__ == $0
  if $graphical
     screen = window(12, 100) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end