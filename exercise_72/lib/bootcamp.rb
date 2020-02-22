class Bootcamp
    attr_accessor :name, :slogan, :student_capacity, :teachers, :students
    
    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new { |hash, key| hash[key] = [] }
    end
    def hire(teacher)
        teachers << teacher
    end
    
    def enroll(student)
        if (@students.length) < @student_capacity
        @students << student
        return true
        else
            return false    
        end
    end
    
    def enrolled?(student)
        @students.include?(student) ? true : false 
    end
    
    def student_to_teacher_ratio
        @students.length / @teachers.length

    end
    
    def add_grade(student, grade)
        if @students.include?(student)
            @grades[student] << grade
            return true
        else
            return false
        end
    end
    
    def num_grades(student)
        @grades[student].length
    end
    def average_grade(student)
        if @grades[student].empty?
            return nil
        else 
            return @grades[student].sum / @grades[student].length
        end
    end
end