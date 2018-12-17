require_relative './message.rb'

class MessageHistory
  attr_reader :history

  def initialize(message_class = Message)
    @history = []
    @message_class = message_class
  end

  def add_message
    message = @message_class.new
    @history << message
  end

end
