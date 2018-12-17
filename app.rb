require "sinatra/base"

class MSNGR < Sinatra::Base

  get "/" do
    erb(:index)
  end

  post "/post_message" do
    p @msg_cheese = params[:msg_name]
    p @msg_text = params[:user_message]
    erb(:message)
  end


end
