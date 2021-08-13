class UsersController < ApplicationController
    def index
        render json: User.all
    end

    def create
        puts params[:user]
        User.create(name: params[:user][:name])
        redirect_to "/users"
    end
end
