module DiceGame
  class Dice
    DICECOUNT = 2
    DICESIZE = 6

    def roll
        (1..DICECOUNT*DICESIZE).to_a.sample
    end
  end
end

#puts DiceGame::Dice.new.roll
