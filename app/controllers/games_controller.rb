class GamesController < ApplicationController
  def index
    if logged_in?
    @game = Game.all
  else
    redirect_to root_path
    end
  end

  def edit
    @game = Game.find(params[:id])
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.home_score = 0
    @game.visitor_score = 0
    if @game.valid?
      @game.save
      redirect_to games_path
    else
      p @game.errors.messages
    end
  end

    def update
        @game = Game.find(params[:id])
        if @game.update(game_update_params)
        redirect_to games_path
        end
    end

    def destroy
      @game = Game.find(params[:id])
      respond_to do |format|
      format.js
    end
    @game.destroy
    end

  private

  def game_params
    params.require(:game).permit(:name, :game_date)
  end

    def game_update_params
      params.require(:game).permit(:name, :game_date, :home_score, :visitor_score)
    end

end
