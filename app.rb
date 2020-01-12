require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input.erb
  end

  post '/' do
    @user_input = params
  end
end
