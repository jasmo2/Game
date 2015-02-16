class PlayerController < ApplicationController
  public
  def new
  	@player = Player.new

  end

  def create
  	@player = Player.create(parameters)
  	if @player.valid?
  		flash[:created_player]= "El jugador se ha creado!"
  		redirect_to player_form_path
  	else
  		render :new
  	end

  end

  private 
  def parameters
  	params.require(:player).permit(:name, :email, :username, :points, :active)
  end
end
