class Message
  attr_reader :content, :time

  def initialize(content)
    @content = content
    @time = Time.now
  end

  def twenty_characters
    @content[0...20]
  end

end
