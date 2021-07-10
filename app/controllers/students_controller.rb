class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @studnt = Student.new
  end

  def create
    #@student = Student.new
    #@student.title = params[:title]
    #@student.description = params[:description]
    #@student.save
    #redirect_to student_path(@student)
    
      @student = Student.create({
        first_name: params[:first_name],
        last_name: params[:last_name]
      })
      redirect_to student_path(@student)
    
  end

end
