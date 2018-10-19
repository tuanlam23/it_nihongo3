class UsersController < ApplicationController
	before_action :logged_in_user, only: [:edit, :update]
	before_action :correct_user,   only: [:edit, :update, :show]
  def new
  	@user = User.new
  end

  def show
    return if @user&.activated
    flash[:fail] = "User dose not exits! You can sign up."
  	redirect_to root_path
  end

  def create
    @user = User.new(user_params)    # Not the final implementation!
    if @user.save
      @user.send_activation_email
   	  flash[:success] = "Welcome to the Review Book!"
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name,:avatar, :login_name, :gender, :email, :password,
                                   :password_confirmation)
    end

    def logged_in_user
      unless logged_in?
      	store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
end
