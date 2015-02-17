class UsersController < ApplicationController
  def new
  @user = User.new
end

def create
  @user = User.create(user_params)
  if @user.save
    redirect_to root_url, :notice => "Signed up!"
  else
    rend
    er "new"
  end
end
 private

 def user_params
    params.require(:user).permit(:username, :email, :password, :salt, :encrypted_password)
	end
end
