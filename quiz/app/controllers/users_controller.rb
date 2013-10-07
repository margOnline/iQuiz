class UsersController < ApplicationController
  
  def new
    
  end

  def create
    email = params[:email]
    @user = User.create(email: email)
    if @user.save
      redirect_to '/', notice: 'User created'
    end
  end

end

