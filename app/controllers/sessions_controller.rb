class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:username]).try(:authenticate, params[:password])
    if @user
      session[:user_id] = @user.id
      flash[:success] = "just a string"
      redirect_to sources_path
    else
      redirect_to root_path
    end
  end

  def destroy

      session[:user_id] = nil
      redirect_to root_path
  end
end
