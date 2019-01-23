class View

  def create_gossip

      puts "rentre ton nom"
      author_name = gets.chomp
      puts "c ets quoi ton gossip"
      gossip_content = gets.chomp

      params = {author: author_name,content: gossip_content }

      return params

  end

  def index_gossips(gossip)

    gossip.each do |line|
    puts line
    end

  end


end
