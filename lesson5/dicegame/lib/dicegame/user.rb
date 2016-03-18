module DiceGame
  class User
    DEFAULT_CREDITS = 1000
    attr_accessor :score, :credits, :name, :win
    def initialize(name)
      @name = name
      @win = 0
    end

    def bet params
      @score = params[:score]
      @credits = params[:credits]
    end
  end
end
