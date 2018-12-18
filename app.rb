require "sinatra/base"
require_relative "lib/message"


class MSNGR < Sinatra::Base

enable :sessions

before do
  session[:history] == nil ? session[:history] = [] : session[:history]
end

  get "/" do
    p @messagehistory = session[:history]
   
    @messagehistory << @message
    erb(:index)
  end

  post "/post_message" do
    session[:msg_text] = params[:user_message]
    @message = Message.new(session[:msg_text])
    redirect "/"
  end

end
