require 'csv'
require 'pry'

class Gossip

  attr_reader :author, :content

  def initialize(author, content)

    @content = content
    @author = author
  end

  def save

      CSV.open("db/gossip.csv", "a") do |csv|
        csv << [@author,@content]
      end
  end

  def self.all

    all_gossips = []
    CSV.foreach("db/gossip.csv") do |row|
  # use row here...
    all_gossips << row

  end
    return all_gossips
    
  end


end
