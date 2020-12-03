class UsersController < ApplicationController
    def index
        render plain: "I'm in the index action!"
    end

    def create
        render json: params
    end

    def show
        render json: params[:id]
    end

    {"some_category"=>{"a_key"=>"another value", 
    "a_second_key"=>"yet another value",
     "inner_inner_hash"=>{"key"=>"value"}},
      "something_else"=>"aaahhhhh"}
end