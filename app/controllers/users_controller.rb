class UsersController < ApplicationController

    def index
        users = User.all.score_order
        render json: users
    end

    def show
        user = User.find(params[:id])
    end

    def create
        user = User.create(user_params)
        render json: user
    end

    private
    def user_params
        params.permit(:gamertag, :score)
    end

end
