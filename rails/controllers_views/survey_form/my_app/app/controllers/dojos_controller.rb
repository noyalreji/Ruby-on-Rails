class DojosController < ApplicationController
    def index
        session[:views] ||= 0
        render "index"
    end

    def create
        #it'll be incremented when added to views
        session[:views] = session[:views] + 1
        session[:result] = params[:dojo]
        flash[:success] = "Thanks for submitting this form! You have submitted this form #{ session[:views] } times now."
        redirect_to '/dojos/result'
    end

    def result
        @result = session[:result]
    end 
end
