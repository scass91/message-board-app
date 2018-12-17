class Message

attr_reader :title, :content

  def initialize(title, content)
    @title = title
    @content = content
    @messages = []
  end

  def add_message
   @messeges << @content
  end 

end
