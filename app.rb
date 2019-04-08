require 'sinatra/base'
require './lib/compare'
require './lib/rps'

class Game < Sinatra::Base
  enable :sessions

  before do
    @rps = RPS.new
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :play
  end


  get '/rock' do
    @compare = Compare.new("rock", @rps.option)
    erb :win
  end

  get '/paper' do
    @compare = Compare.new("paper", @rps.option)
    erb :win
  end

  get '/scissors' do
    @compare = Compare.new("scissors", @rps.option)
    erb :win
  end


  run if app_file == $0
end
