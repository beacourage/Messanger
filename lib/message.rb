class Message
  attr_reader :content, :time

  def initialize(content, time = Time.now)
    @content = content
    @time = time
  end
end
