class PlayersController < ApplicationController
  def index
    @player = Player.all
  end

  def edit
    @player = Player.find(params[:id])
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
  end

  def create
  @player = Player.new(player_params)
  if @player.valid?
    @player.save
    redirect_to players_path
  else
    p @player.errors.messages
  end
end


  def update
        @player = Player.find(params[:id])
      if @player.update(player_params)
        redirect_to players_path
      end
  end

  def destroy
    @player = Player.find(params[:id])
    respond_to do |format|
    format.js
  end
  @player.destroy
  end

  private

    def player_params
      params.require(:player).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
end
