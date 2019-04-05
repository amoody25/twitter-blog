class UserController < ApplicationController
    has_many :comments
    has_many :tweets
    def create
    end
    def new
        @user = User.new
    end
    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to tweets_path
    end
    def show
        @user = User.find(params[:id])
    end
    def update
    end
end
