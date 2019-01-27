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
  end
end


def update
        @player = Player.find(params[:id])
        if @player.update(player_params)
        redirect_to players_path
      end
    end

  private

    def player_params
      params.require(:player).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
end
