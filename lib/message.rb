require 'pg'
require 'data_mapper'

  # def self.all
  #   connection = PG.connect(dbname: 'messanger_db')
  #   connection.exec('SELECT * FROM messages;')
  # end
  
class Message
  include Data_Mapper:: Resource
  attr_reader :content, :time

property :id, Serial
property :message, String

  def initialize(content)
    @content = content
    @time = Time.now
  end

  def twenty_characters
    @content[0...20]
  end

end
