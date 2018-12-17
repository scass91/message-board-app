require "sinatra/base"
require_relative "lib/message"
require_relative "lib/message_history"

class MSNGR < Sinatra::Base

enable :sessions

  get "/" do
    erb(:index)
  end

  post "/post_message" do
    session[:msg_title] = params[:msg_title]
    session[:msg_text] = params[:user_message]
    # session[:msg_history] = MessageHistory.new
    redirect "/display"
  end

  get "/display" do

    @new_message = Message.new(session[:msg_title], session[:msg_text])

    # @msg_title = session[:msg_title]
    # @msg_text = session[:msg_text]
    erb(:message)
  end

end
