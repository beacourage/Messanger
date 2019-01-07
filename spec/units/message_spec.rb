require 'message'

describe 'Message' do

   let(:message) {Message.new(:content)}
   let(:content) {double(content)}

    it 'allows new message instance to accept content' do
       expect(message.content).to eq(:content)
    end

    it "will only display first twenty characters of message" do
      expect(message.twenty_characters).to eq "Hello there Mr Subom"
    end


end
