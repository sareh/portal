class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
  end

  def index
    @users = User.all
  end

  def edit
  end

  def destroy
  end
end
