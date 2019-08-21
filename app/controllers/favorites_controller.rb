class FavoritesController < ApplicationController
    def index
        @favorites = Favorite.all
        render json: @favorites
    end

    def show
        @favorite = Favorite.find(params[:id])
        render json: @favorite
    end

    def new
        @favorite = Favorite.new
    end

    def create
        @favorite = Favorite.create(allowed_params)
        render json: @favorite
    end

    def destroy
        @favorite = Favorite.find(params[:id])
        @favorite.destroy
    end

    private
        def allowed_params
            params.require(:favorite).permit(:user_id, :itself, :cfs, :height, :status, :gaugeLocation, :dateTime)
        end
end