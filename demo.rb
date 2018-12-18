

get '/message' do 
  message = Message.new(params[:content])
  sessions[:message] << message
end
