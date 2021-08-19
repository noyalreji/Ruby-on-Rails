class DojosController < ApplicationController
  def index
    @dojos = Dojo.all
    @number = Dojo.count
  end

  def create
    @dojo = Dojo.create(dojo_params)
    if @dojo.valid?
      redirect_to "/dojos"
    else
      flash[:notice] = @dojo.errors.full_messages
      redirect_to :back
    end
  end

  def new
  end

  def edit
    @dojo = Dojo.find(params[:id])
  end

  def show
    @dojo = Dojo.find(params[:id])
    @students_by_dojo = Dojo.find(params[:id]).students
  end

  def update
    dojo = Dojo.find(params[:id])
    dojo.update(dojo_params)
    dojo.save
    puts dojo.errors.full_messages if dojo.errors
    redirect_to "/dojos"
  end

  def destroy
    dojo = Dojo.find(params[:id])
    dojo.destroy
    redirect_to "/dojos"
  end
  private
    def dojo_params
      params.require(:dojo).permit(:branch, :street, :city, :state)
    end



end



