require 'rack'
require 'erb'
require_relative 'controllers/base_controller'
require_relative 'controllers/game_controller'
require_relative 'controllers/turn_controller'
require_relative 'controllers/finish_controller'

use Rack::Reloader

map '/' do
  run GameController.new
end

map '/turn' do
  run TurnController.new
end

map '/finish' do
  run FinishController.new
end

# map '/send_name' do
#   run SendNameController.new
# end
