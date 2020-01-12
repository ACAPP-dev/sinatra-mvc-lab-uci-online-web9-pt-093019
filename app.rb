require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input.erb
  end

  post '/' do
    @pig_latin = PigLatinizer.new(params[:string])
    erb :show_result.erb
  end
end
