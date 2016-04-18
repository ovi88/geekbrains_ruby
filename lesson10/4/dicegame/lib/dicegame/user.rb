require_relative 'validator'

module DiceGame
  DEFAULT_CREDITS = 1000

  class User
    include Validator

    attr_accessor :score, :credits, :name, :win

    def initialize(name)
      @name = name
      @win = 0
      @default_credits = DEFAULT_CREDITS
    end

    def bet params
      @score = params[:score]
      @credits = params[:credits]
      @default_credits -= @credits
      valid?
    end
  end
end

#user_1 = DiceGame::User.new("user_1")
#user_2 = DiceGame::User.new("user_2")

#user_1.bet score: 12, credits: 200
#user_2.bet score: 7,  credits: 350
