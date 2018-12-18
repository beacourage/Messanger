require "sinatra/base"
require "./lib/message"

class Talk2me < Sinatra::Base
set :sessions, true

  get "/" do
    session[:messages] ||= []
    @messages = session[:messages]
    erb :index
  end

  post "/message" do
    message = Message.new(params[:message])
    session[:messages] << message
    redirect ("/")
  end

end
