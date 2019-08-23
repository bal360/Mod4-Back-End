class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users, include: [:favorites]
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(allowed_params)
        render json: @user
    end

    def update
        @user = User.find(params[:id])
        if @user.update(allowed_params)
            render json: @user
        else 
            render json: @user.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @user = Review.find(params[:id])
        @user.destroy
    end

    private
        def allowed_params
            params.require(:user).permit(:name, :email, :location)
        end
end