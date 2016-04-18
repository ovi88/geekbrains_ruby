require_relative '../dicegame/lib/dicegame'

class BaseController
  include DiceGame

  def call env
    @request = Rack::Request.new(env)
    @user_1 = DiceGame::User.new("user_1")
    @user_2 = DiceGame::User.new("user_2")
    @current_game = DiceGame.create @user_1, @user_2
    [ status, headers, body ]
  end

  private

  def status
    200
  end

  def headers
    {}
  end

  def body
    raise 'Method body should be implemented in child'
  end

  def render template_name
    template = File.open("views/#{template_name}.html.erb").read
    [ ERB.new(template).result(binding) ]
  end

end
