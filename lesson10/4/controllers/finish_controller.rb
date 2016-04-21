
class FinishController < BaseController

  def body
    @result_finish = @current_game.finish
    render('finish')
  end

end
