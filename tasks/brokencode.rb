#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "brokencode_not_main"
require_relative "../karel/robota"
require_relative "../mixins/turner"

def task()
  include Turner
  karel = Pratique.new(1, 1, Robota::EAST, 50)
  karel.move_5
  karel.mettre_5_beeper
  karel.turn_around
  karel.diagonale_droit
  karel.put_beeper
  karel.turn_off
end

if __FILE__ == $0
  if $graphical
     screen = window(9, 80) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end