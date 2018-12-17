require 'message_history'


RSpec.describe 'MessageHistory' do
  describe '#add_message' do
    msghistory = MessageHistory.new
    it 'adds a message' do 
    expect{msghistory.add_message("carol")}.to change{msghistory.history.size}.by(1)
    end
  end
end