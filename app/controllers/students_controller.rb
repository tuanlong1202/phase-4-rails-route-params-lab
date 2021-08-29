class StudentsController < ApplicationController

  def index
    if !params[:name]
      students = Student.all
      render json: students
    else
      students = Student.all
      render json: students.select{ |st| st.first_name == params[:name].capitalize || st.last_name == params[:name].capitalize } 
    end
  end

  def show
    student = Student.find_by(id: params[:id])
    render json: student
  end

  def search
    byebug
  end

end
