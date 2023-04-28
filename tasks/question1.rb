#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "stair_sweeper"
require_relative "../karel/robota"

def task ()
  karel=StairSweeper.new(3,3, NORTH,5)
  karel.put_beeper()
  karel.move()
  karel.put_beeper()
  karel.move()
  karel.put_beeper()
  karel.move()
  karel.put_beeper()
  karel.move()
  karel.put_beeper()
  karel.move()

end

if __FILE__ == $0
  if $graphical
     screen = window(8, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end

end