require "sinatra/base"

class Talk2me < Sinatra::Base
enable :sessions

  get "/" do
    @message = session[:message]
    erb :index
  end

  post "/message" do
    session[:message] = params[:message]
    erb :homepage
    redirect ("/")
  end

end
