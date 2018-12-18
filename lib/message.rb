class Message

attr_reader :content

  def initialize(content)
    @content = content
    @time = Time.now
    
  end

end
