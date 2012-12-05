require 'sinatra'
require 'sinatra/jsonp'
require './subtes'

get '/subtes' do
  JSONP get_status
end