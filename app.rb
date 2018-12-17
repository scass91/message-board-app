require "sinatra/base"

class MSNGR < Sinatra::Base

enable :sessions

  get "/" do
    erb(:index)
  end

  post "/post_message" do
    session[:msg_title] = params[:msg_title]
    session[:msg_text] = params[:user_message]
    redirect "/display"
  end

  get "/display" do
    @msg_title = session[:msg_title]
    @msg_text = session[:msg_text]
    erb(:message)
  end

end
