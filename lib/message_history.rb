require_relative './message.rb'

class MessageHistory
  attr_reader :history

  def initialize
    @history = []
    
  end

  def add_message (message)
    @message = message
    @history << @message
  end

end
