class HomeController < ApplicationController
  def gossip
    @all_gossips= Gossip.all
    puts "*" * 50
    puts @all_gossips
    puts "*" * 50
  end

  def show_gossip
    @gossip = Gossip.find(:id)
  end
end
