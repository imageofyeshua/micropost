class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      reset_session
      log_in @user
      flash[:success] = "Welcome to Shema Ekklesia! #{@user.name}"
      redirect_to @user
    else
      # flash[:alert] = "Error creating user account!"
      render 'new', status: :unprocessable_entity
    end
  end

  private
    
    def user_params
      params.expect(user: [:name, :email, :password, :password_confirmation])
    end
  
end
