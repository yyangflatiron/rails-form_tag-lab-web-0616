class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
  	# session[:form_params] = params.inspect
  	@student = Student.create(params[:first_name], params[:last_name])
  	redirect_to new_student_path
  	#(student: @student)
  end




end
