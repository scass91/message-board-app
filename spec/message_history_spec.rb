require 'message_history'


RSpec.describe 'MessageHistory' do
  describe '#add_message' do
    msghistory = MessageHistory.new
    it 'adds a message' do 
      expect{msghistory.add_message("carol")}.to change{msghistory.history.size}.by(1)
    end

    it 'adds more then one message' do 
      msghistory.add_message('Carol')
      msghistory.add_message('simon')
      expect{msghistory.history.size}.to eq 2 
    end
  end
end