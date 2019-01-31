class PlayersController < ApplicationController
  def index
    if logged_in?
    @player = Player.all
  else
    redirect_to root_path
  end
end

  def edit
    if logged_in?
    @player = Player.find(params[:id])
  else
    redirect_to root_path
  end
  end

  def show
    if logged_in?
    @player = Player.find(params[:id])
  else
    redirect_to root_path
  end
  end

  def new
    if logged_in?
    @player = Player.new
  else
    redirect_to root_path
  end
  end

  def create
  @player = Player.new(player_params)
  if @player.valid?
    @player.save
    redirect_to root_path
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
