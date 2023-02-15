class Gradebook
    attr_reader :instructor, :courses

    def initialize(instructor)
        @instructor = instructor
        @courses = []
    end
    
    def add_course(course)
        @courses << course
    end

    def enlist_students(student_info)
        student_info.tap do |student|
            new_student = {
                name: student[:name],
                age: student[:age]}
            @courses << Student.new(new_student)
        end
    end
end
