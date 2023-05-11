#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to sweep a short staircase of beepers
class Initialisetache < UrRobot
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, NORTH, beepers)
  end
  
  def moveturn
    move
    turn_left
  end
end