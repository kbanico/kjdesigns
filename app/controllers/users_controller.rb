class UsersController < ApplicationController
    def new
       @user = User.new 
    end
    
    def create
       @user = User.new(user_params)
       if @user.save
          flash[:success] = "Welcome To KJDESIGNS #{@user.username}"
          redirect_to root_path
       else
           flash[:danger] = "Something went wrong"
          render "new"
       end
       
    end
    
    private
    
    def user_params
       params.require(:user).permit(:username, :email, :password_digest) 
    end
end
