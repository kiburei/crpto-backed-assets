class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to root_path, notice: 'added new user' }
      else
        format.html { redirect_to root_path, notice: 'error adding user' }
      end
    end
  end

  private

  def user_params
    params.permit(:name, :balance)
  end

end
