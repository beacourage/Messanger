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

  get "/full_message/:id" do
    messages = session[:messages]
    @message = messages[Integer(params[:id])]
    erb(:all_messages)
  end

end
