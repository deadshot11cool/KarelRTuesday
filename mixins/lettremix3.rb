
module Lemix

  def turn_right
    turn_left
    turn_left
    turn_left
  end
  
  def turn_around
    turn_left
    turn_left
  end
  
  def move_beep1
    put_beeper
    move
  end

  def move_beep
    move_beep1
    move_beep1
  end

  def move2
    move
    move
  end

  def move3
    move2
    move
  end
end