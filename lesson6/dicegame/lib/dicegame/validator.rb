require_relative('dice')
require_relative('user')

module DiceGame
  module Validator
    def valid?
        raise "You need make credits" if @credits  == nil
        raise "Your score is very big, maximum #{DICESIZE*DICECOUNT}" if @score > DICESIZE*DICECOUNT
        raise "Your don't have this credits" if @default_credits < 0
        #puts @player_array.class
    end
  end
end
