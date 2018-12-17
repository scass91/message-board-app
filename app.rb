require "sinatra/base"

class MSNGR < Sinatra::Base

  get "/" do
    erb :index
  end

end
