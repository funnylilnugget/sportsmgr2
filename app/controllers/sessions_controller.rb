class SessionsController < ApplicationController
  def new
  end

def create
  user = Coach.find_by(params[:session][:email])
  if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      log_in user
      redirect_to root_path
else
  render 'new'
    end
end

def destroy
  user = current_user
  log_out user
  redirect_to root_path
end

end
