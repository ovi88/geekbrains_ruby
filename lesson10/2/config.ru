require 'rack'


use Rack::ContentType, "text/plain"
use Rack::ETag

app = Proc.new { |env| [200, {}, ['Hey, this is Rack, bro!']] }

run app
