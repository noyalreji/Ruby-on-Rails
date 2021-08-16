class DojosController < ApplicationController
  def index
    @dojos = Dojo.all
    @number = Dojo.count
  end

  def new
    render "new"
  end

  def show
    
  end

  def edit
  end
end
