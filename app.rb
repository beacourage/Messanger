require "sinatra/base"

class Talk2me < Sinatra::Base

  get "/" do
    erb :index
  end

  post "/message" do
    @message = params[:message]
    erb :homepage
    # redirect ("/")
  end

end


#sessions
