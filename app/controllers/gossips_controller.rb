class GossipsController < ApplicationController


  def index
    @gossip = Gossip.all
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(person_params)
    @gossip.save
    redirect_to @gossip
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    if @gossip.update(person_params)
     redirect_to @gossip
    end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to @gossip
  end


  private
    def person_params
      params.require(:gossip).permit(:anonymous_author, :content )
    end
    
end
