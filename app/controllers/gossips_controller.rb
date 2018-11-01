class GossipsController < ApplicationController

  protect_from_forgery prepend: true
  before_action :set_gossip, only: [:update, :edit, :show, :destroy]
  def index
  	@gossips = Gossip.all
  end


  def new
    @gossip = Gossip.new
  end

  def show
    render 'gossips/show'
  end

  def create
    @gossip = Gossip.new
    @gossip.content = params[:gossip][:content]
    if params['user_id']
      @gossip.user_id = params['user_id']
    else
      @gossip.anonymous_gossiper = params[:gossip][:anonymous_gossiper] 
    end
    @gossip.save

    redirect_to "/gossips"
  end

  def update
    @gossip.content = params[:gossip][:content]
    @gossip.save

    redirect_to "/gossips/#{@gossip.id}"
  end
  def destroy
    if @user != "nil" || @user != "Nil"
      if @user.id == @gossip.user_id
        @gossip.delete
        redirect_to "/gossips"
      # else
        # Errors
      end
    end
  end

  def set_gossip
    @gossip = Gossip.find(params[:id])
  end
end
