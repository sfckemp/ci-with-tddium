require './web.rb'
require 'test/unit'
require 'rack/test'

set :environment, :test

class MySimpleTest < Test::Unit::TestCase

    def test_basic
        browser = Rack::Test::Session.new(Rack::MockSession.new(Sinatra::Application))
        browser.get '/', :name => 'Brad'
        assert_equal 'Hello, Brad', browser.last_response.body
    end
end