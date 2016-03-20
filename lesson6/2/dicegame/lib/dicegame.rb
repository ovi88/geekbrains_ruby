require_relative('dicegame/user')
require_relative('dicegame/dice')
require_relative('dicegame/validator')
require_relative('dicegame/turn')

module DiceGame
  WINSIZE = 0.25

  def self.create *users
    #p users.name
    @player_array = []
    users.each do |u|
      @player_array.push u
    end
    return DiceGame
    #p @player_array
  end

  def self.turn
    Turn.new(@player_array).resolve
  end

  def self.finish
    puts "Game results:"
    @player_array.each do |player|
      #puts "#{player.win}"
      puts player.win
      #puts @win
    end
  end

  def self.version
    '1.0.0'
  end
end

user_1 = DiceGame::User.new("user_1")
user_2 = DiceGame::User.new("user_2")

current_game = DiceGame.create user_1, user_2

#DiceGame.create user_1, user_2
user_1.bet score: 12, credits: 400
user_2.bet score: 7, credits: 350

#p user_1.credits

current_game.turn

# => Wheel of fortune throws: 7
# => user_1 loses
# => user_2 wins

user_1.bet score: 6, credits: 600
user_2.bet score: 7, credits: 500
#
current_game.turn
current_game.finish
