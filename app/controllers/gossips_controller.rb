class GossipsController < ApplicationController
  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.create('title' => params[:title], 'content' => params[:content])
    if @gossip.errors.messages == {}
      redirect_to '/gossips/index'
    else
      redirect_to '/gossips/new'
    end
  end
  
  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @all_gossips= Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id])
  end
end
