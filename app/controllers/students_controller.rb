class StudentsController < ApplicationController
  def index
    render json: Student.all.to_json
  end

  def grades
    render json: Student.order(grade: :desc).to_json
  end

  def highest_grade
    render json: Student.order(grade: :desc).first.to_json
  end
end
