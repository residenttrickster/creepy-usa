class UsersController < ApplicationController

    def index 
        @users = User.all
        render :index 
    end 

    def show
        @user = user_find
        render :show 
    end 

    def new
        @user = User.new
        render :new 
    end

    def create
        @user = User.create(user_params)
        redirect_to user_path(@user)
    end 

    def edit
        @user = user_find
        render :edit 
    end 

    def update
        @user = user_find
        @user.update(user_params)
        redirect_to user_path(@user)
    end 

    def destroy
        @user = user_find
        @user.destroy
        redirect_to users_path
    end 

    private

    def user_params
        params.require(:user).permit(:username, :bio)
    end 

    def user_find
        User.find(params[:id])
    end 

end
