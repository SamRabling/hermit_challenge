class UsersController < ApplicationController
    def create
    @user = User.new(name:params[:name], email:params[:email], password:params[:password])
    if @user.save
      session[:user_id] = @user.id
      redirect_to "/bright_ideas"
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to "/"
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
