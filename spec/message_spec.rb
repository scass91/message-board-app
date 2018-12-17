require "message"

describe "#new" do
  it "it initializes with a title and content" do
    m = Message.new("Carol", "This is content")
    expect(m.title).to eq("Carol")
    expect(m.content).to eq ("This is content")
  end

  
end
