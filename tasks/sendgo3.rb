#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "../karel/robota"
require_relative "../mixins/lettremix3"
require_relative "../mixins/sensor_pack"
require_relative "../karel/ur_robot"

class Sendgo3 < UrRobot 
    def turn_right
        turn_left
        turn_left
        turn_left
    end  

    def do_this
    commandes = %w[move move move move move move move turn_left turn_left turn_left move move move put_beeper]
  		commandes.each do |commandes|
    		send(commandes) if respond_to?(commandes)
  		end
  	end
end