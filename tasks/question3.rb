#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "stair_sweeper"
require_relative "../karel/robota"
require_relative "bob"

def task()
  karel=Bob.new(3,3, NORTH,25)
  karel.ligne1()
  karel.turne1
  karel.ligne1()
  karel.turne2
  karel.ligne1
  karel.turne1
  karel.ligne1
  karel.turne2
  karel.ligne1
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