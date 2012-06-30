# web.rb
require 'sinatra'

get '/' do
    "Hello, {params[:name]}"
end

