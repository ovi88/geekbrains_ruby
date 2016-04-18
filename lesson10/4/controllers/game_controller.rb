class GameController < BaseController

  def body
    @user_1.bet score: @request.params["score_user1"].to_i, credits: @request.params["credits_user1"].to_i
    @user_2.bet score: @request.params["score_user2"].to_i, credits: @request.params["credits_user1"].to_i
    render('request')
  end

end
