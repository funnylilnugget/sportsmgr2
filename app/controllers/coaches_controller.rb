class CoachesController < ApplicationController
  def index
    if logged_in?
    @coach = Coach.all
  else
    redirect_to root_path
    end
  end

  def edit
    @coach = Coach.find(params[:id])
  end

  def show
    @coach = Coach.find(params[:id])
  end

  def new
    @coach = Coach.new
  end

  def create
  @coach = Coach.new(coach_params)
  if @coach.valid?
    @coach.save
      redirect_to coaches_path
  else
    p @coach.errors.messages
  end
  end

  def update
        @coach = Coach.find(params[:id])
        if @coach.update(coach_params)
        redirect_to coaches_path
        end
  end

  private

    def coach_params
      params.require(:coach).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
end
