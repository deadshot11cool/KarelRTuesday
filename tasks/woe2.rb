#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "stair_sweeper"
require_relative "../karel/robota"
require_relative "../mixins/triangle"
require_relative "bob"

  def task()
  include Triangle
    karel= Bob.new(1,5, NORTH,25)
    karel.lighnepick
    karel.turn_left
    karel.move
    karel.turn_left
    karel.turn_left
    karel.lighnepick
    karel.move
    karel.lighnepick
    karel.turn_left
    karel.move
    karel.turn_left
    karel.lighnepick
    karel.move
    karel.lighnepick
    karel.move
    karel.lighnepick
    karel.turn_left
    karel.turn_left
    karel.turn_left
    karel.move
    karel.turn_left
    karel.turn_left
    karel.turn_left
    karel.lighnepick
    karel.move
    karel.lighnepick
    karel.move
    karel.lighnepick
    karel.move
    karel.lighnepick
    karel.turn_left
    karel.move
    karel.turn_left
    karel.move
    karel.move
    karel.lighnepick
    karel.move
    karel.lighnepick
    karel.move
    karel.lighnepick
    karel.turn_left
    karel.turn_left
    karel.turn_left
    karel.move
    karel.turn_left
    karel.turn_left
    karel.turn_left
    karel.move
    karel.move
    karel.lighnepick
    karel.move
    karel.lighnepick
    karel.turn_left
    karel.move
    karel.turn_left 
    karel.move
    karel.move
    karel.lighnepick
  end

  if __FILE__ == $0
    if $graphical
       screen = window(12, 80) # (size, speed)
       screen.run do
         task
       end
     else
       task
     end
  end