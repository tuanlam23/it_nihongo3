class Admin::UsersController < ApplicationController
  before_action :check_admin

  def index
    @users = User.order("created_at DESC").page(params[:page]).per(10)
  end

  def destroy
    @user = User.find_by id: params[:id]
    if user.destroy
      redirect_to admin_users_path
    else
      redirect_to admin_users_path
    end
  end

  private

  attr_reader :user

  def check_admin
    unless current_user.is_admin
      flash[:danger] = "You don't have permission to do."
      redirect_to root_path
    end
  end
end
