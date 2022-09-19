class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        grades = Student.all.order(:grade).reverse
        render json: grades
    end

    def highestgrade
        highestgrade = Student.all.order(:grade).last
        render json: highestgrade
    end
end
