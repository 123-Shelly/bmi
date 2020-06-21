class ItemsController < ApplicationController
	  

	def index
		@user = User.new
	end

 
  def create
      @user = User.new
  	if
	  	@user = User.find_by( username: params[:user][:username], 
	  		                       email: params[:user][:email], 
	  		                    password: params[:user][:password] )
	  	redirect_to "items#create"
  	else
  		redirect_to "/items"
  	end
  end



  private

  def user_params
  	params.require(:user).permit(:username, :email, :password)
  end



end