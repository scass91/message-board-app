require "message"

describe "#new" do
  it "it initializes with a title" do
    m = Message.new("Carol")
    expect(m.title).to eq("Carol")
  end
end
