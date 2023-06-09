#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "sendgo3"
require_relative "../karel/robota"


def task()
  world = Robota::World
  world.read_world("../worlds/blancworld.txt")
  
  karel = Sendgo3.new(1, 1, Robota::NORTH, 100)
  karel.do_this
end

if __FILE__ == $0
  if $graphical
     screen = window(10, 80) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end

