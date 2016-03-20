require_relative('dice')

module DiceGame

  class Turn

    def initialize (players)
      @players = players
    end

    def resolve
    #  p @players
       score_array = []
       credits_array = []
       @players.each do |player|
         score_array.push player.score
       end
       result = Dice.new.roll
       puts "Wheel of fortune throws: #{result}"
       @players.each do |player|
         if player.score == result
           player.win += WINSIZE*player.credits
           puts "#{player.name} wins"
           #puts "#{player.win}"

         else
           player.win -= player.credits
           puts  "#{player.name} loses"
           #puts "#{player.win}"
         end
       end
    end

  end

end
