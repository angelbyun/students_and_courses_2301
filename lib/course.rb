class Course
    attr_reader     :name, :capacity, :students

    attr_accessor   :full

    def initialize(name, capacity, full = false)
        @name = name
        @capacity = capacity
        @students = []
        @full = full
    end

    def full?
        @full
    end

    def enroll_student(student)
        @students << student
    end

    def course_full
        @full = true
    end
end
