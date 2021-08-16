class DojosController < ApplicationController
  def index
    @dojos = Dojo.all
    @number = Dojo.count
  end

  def new
    render "new"
  end

  def show
    @dojo = Dojo.find(params[:id])
  end

  def edit
    @dojo = Dojo.find(params[:id])
    render "edit"
  end

  def update
    @dojo = Dojo.find(params[:id])
    @dojo.update(dojo_params)
    if @dojo.valid?
        redirect_to :root
    else 
        flash[:errors] = @dojo.errors.full_messages
        redirect_to :back 
    end
  end
end



