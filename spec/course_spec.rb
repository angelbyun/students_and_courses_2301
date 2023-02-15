require './lib/course'
require './lib/student'

RSpec.describe Course do
    before(:each) do
        @course = Course.new("Calculus", 2)
        @student1 = Student.new({name: "Morgan", age: 21})
        @student2 = Student.new({name: "Jordan", age: 29})
    end

    describe '#initialize' do
        it 'initializes' do
        expect(@course).to be_an_instance_of(Course)
        expect(@course.name).to eq('Calculus')
        expect(@course.capacity).to eq(2)
        expect(@course.students).to eq([])
        expect(@course.full?).to eq(false)
        end
    end

    describe '#enroll students' do
        it 'enrolls students' do
        expect(@course.students).to eq([])
        @course.enroll_student(@student1)
        @course.enroll_student(@student2)
        expect(@course.students).to eq([@student1, @student2])
        end
    end

    describe '#course full' do
        it 'course is full' do
        @course.course_full
        expect(@course.full?).to eq(true)
        end
    end

end