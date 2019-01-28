class TeamsController < ApplicationController
  def index
    @team = Team.all
  end

  def edit
    @team = Team.find(params[:id])
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.valid?
      # @game = Game.find(1)
      # @game.teams << @team
      @team.save
      redirect_to teams_path
    else
      p @team.errors.messages
      end
    end

    def update
        @team = Team.find(params[:id])
        if @team.update(team_params)
        redirect_to teams_path
      end
    end

  private

  def team_params
    params.require(:team).permit(:name, player_ids:[])
    end

end
