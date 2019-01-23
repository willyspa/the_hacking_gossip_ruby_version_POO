require 'router'
require 'gossip'
require 'view'
require 'pry'



class Controller

   def initialize

     @view = View.new

   end


   def create_gossip

     params = @view.create_gossip
     #binding.pry
     gossip = Gossip.new(params.values[0],params.values[1])
     gossip.save

     #Gossip.new

   end

   def index_gossips

    tableau = Gossip.all
    @view.index_gossips(tableau)

   end


end
