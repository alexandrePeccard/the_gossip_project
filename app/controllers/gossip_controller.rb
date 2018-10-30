class GossipController < ApplicationController
  def index
  	@gossips = Gossip.all
  	# redirect_to action: 'index', gossips: gossips
  	# render :action => 'index'
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def new
  end

  def edit
  end

  def delete
  end
end
