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
        session[:user_id] = @user.id
        if @user.valid?
            redirect_to '/welcome'
                else   
                flash[:errors] = @user.errors.full_messages
                redirect_to new_user_path
        end 
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
        params.require(:user).permit(:username, :password_digest, :bio)
    end 

    def user_find
        User.find(params[:id])
    end 

end
