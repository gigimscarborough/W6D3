class UsersController < ApplicationController
    def index
        render json:
    end

    
    def show
        render json: params[:id]
    end

    private

    def create
        render json: params[:user]
    end

end