class StudentsController < ApplicationController
  def index
  end

  def create
    @student = Student.create(student_params)
    redirect_to "/dojos/#{@student.dojo_id}"
  end

  def show
    @student = Dojo.joiner(params[:id])
    @students = Student.cohort(@student)
  end

  def edit
    @dojod = Dojo.all
    @student = Student.find(params[:id])
  end


  
end
