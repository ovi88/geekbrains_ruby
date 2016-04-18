#не работает TurnController, ошибка
# TypeError at /turn
# nil can't be coerced into Fixnum
# почему-то не передаются юзера в dicegame метод turn, не подскажите почему

class TurnController < BaseController

  def body
    @result_turn = @current_game.turn
    render('turn')
  end

end
