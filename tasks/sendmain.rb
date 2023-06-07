#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "send_go"
require_relative "../karel/robota"


def task()
  world = Robota::World
  world.read_world("../worlds/blancworld.txt")
  
  karel = SendGo.new(1, 1, Robota::NORTH, 100)
  actions = %w[put_beeper move put_beeper move put_beeper move put_beeper move put_beeper turn_right move put_beeper move put_beeper move put_beeper move put_beeper turn_right move put_beeper move put_beeper move put_beeper move put_beeper turn_right move put_beeper move put_beeper move put_beeper move]
  actions.each do |action|
    karel.send(action) if karel.respond_to?(action)
  end
end

if __FILE__ == $0
  if $graphical
     screen = window(8, 100) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end