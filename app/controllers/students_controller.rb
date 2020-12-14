class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :update]
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def update
    @student.toggle!(:active)
    redirect_to @student
  end

  def activate_student
   
  end


  private

    def set_student
      @student = Student.find(params[:id])
    end
end