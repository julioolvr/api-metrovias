require 'sinatra'
require 'sinatra/jsonp'
require './subtes'

get '/' do
  JSONP get_status
end