class StudentsController < ApplicationController

    def index

        students = Student.all
        render json: students

    end

    def grades

        grades = Student.all.order(:name, grade: :desc)
        render json: grades

    end

    def highest_grade

        highest = Student.all.max_by(&:grade)
        render json: highest

    end

end
