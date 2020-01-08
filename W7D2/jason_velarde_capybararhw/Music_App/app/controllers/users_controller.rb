class UsersController < ApplicationController
    def show
        render :show
    end

    def new
        @user = User.new
        render :new
    end

    def create
        @user = User.new(user_params)
    end

    private

    def user_params
        params.require(:user).permit(:email,:password)
    end

end