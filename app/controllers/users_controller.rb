class UsersController < ApplicationController

before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
  end

  def index
    if is_admin
      @users = User.all
    else
      flash[:alert] = "You must be an administrator to access these functions"
      redirect_to :back
    end
  end

end
