require 'message'

class MessageHistory
  attr_reader :history

  def initialize
    @history = []
  end

  def add_message(message)
    @history << message

  end

end