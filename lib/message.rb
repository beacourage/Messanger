require 'pg'
require 'data_mapper'

  # def self.all
  #   connection = PG.connect(dbname: 'messanger_db')
  #   connection.exec('SELECT * FROM messages;')
  # end


class Message
  @@id = 0
#   include DataMapper:: Resource
  attr_reader :content, :time, :id
#
# property :id, Serial
# property :text, String
# property :created_at, DateTime


  def initialize(content)
    @content = content
    @time = Time.now
    @@id += 1
    @id = @@id
  end

  def twenty_characters
    @content[0...20]
  end


end
