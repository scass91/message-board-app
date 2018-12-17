require "sinatra/base"

class MSNGR < Sinatra::Base

enable :sessions

  get "/" do
    erb(:index)
  end

  post "/post_message" do
    @msg_title = params[:msg_title]
    @msg_text = params[:user_message]
    erb(:message)
  end


end
