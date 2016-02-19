class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def edit
  end

  def update
  end

  def delete
  end

  def create
    #TODO: once the controller is implemented, don't forget to sign the user in
    user = User.new(user_params)
    if user.save
      redirect_to '/'
    else
      render :new
      #TODO pass in error message in flash hash
    end

  end

  private

  def user_params
     params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
