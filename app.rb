require_relative 'config/environment'
class App < Sinatra::Base

    configure do
    enable :sessions
    set :session_secret, "delta_zeta"
    end
    
  get '/' do
    erb :index
  end
  
  post '/checkout' do
  @sessions = session
  item = params["item"]
  @sessions[:item] = item
  end
  
end

