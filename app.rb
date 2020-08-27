require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @text = params[:user_input]
    @piglatinize = PigLatinizer.new
    @piglatinize.piglatinize_word
    erb :piglatinize
  end

end
