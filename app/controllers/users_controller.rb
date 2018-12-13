class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    @user_id = session[@user.id]
    redirect_to secret_path
  end


private
 def user_params
   params.require(:user).permit(:full_name, :email_address, :password)
 end

end
