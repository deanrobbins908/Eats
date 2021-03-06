class UsersController < ApplicationController
  before_action :signed_in_user, only: [:index, :edit, :update, :destroy, :host]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy

  def show
  	@user = User.find(params[:id])
    @meals = @user.meals 
    @meal = current_user.meals.build if signed_in?
    

  end

  def index
    @users = User.all
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted."
    redirect_to users_url
  end

  def host
  end



  def new
  	@user = User.new
  end 

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      
      redirect_to @user
    else
      render 'edit'
    end
  end


  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :profile, :password,
                                   :password_confirmation)
    end

    # Before filters



    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end