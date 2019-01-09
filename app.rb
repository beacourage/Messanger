require "sinatra/base"
require "./lib/message"

class Talk2me < Sinatra::Base


  configure :development do
   DataMapper.setup(:default, 'postgres://localhost/messanger_db')
  end

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

  get "/messages/:id" do
    session[:messages].each do |message|
    #return the message that has the particular id which was stored in the param
      @message = message if message.id == params[:id].to_i
    end
    erb :message
  end
end

# i want to find a message with a particular id
# corresponds to the id of the message that was clicked and that is found in the param
