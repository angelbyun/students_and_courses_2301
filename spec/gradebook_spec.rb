require './lib/course'
require './lib/student'
require './lib/gradebook'

RSpec.describe Gradebook do
    before(:each) do
        @gradebook = Gradebook.new("Professor Smith")
        @student = Student.new({name: "Morgan", age: 21})
    end

    describe '#initialize' do
        it 'initializes' do
            expect(@gradebook).to be_an_instance_of(Gradebook)
            expect(@gradebook.instructor).to eq('Professor Smith')
            expect(@gradebook.courses).to eq([])
        end
    end

    describe '#add courses' do
        it 'can add courses' do
            expect(@gradebook.courses).to eq([])
            @gradebook.add_course('Biology')
            @gradebook.add_course('Calculus')
            @gradebook.add_course('Computer Science')
            @gradebook.add_course('History')
            expect(@gradebook.courses).to eq(['Biology', 'Calculus', 'Computer Science', 'History'])
        end
    end

    describe '#list students' do
        it 'can list students' do
            @gradebook.enlist_students(@student)
            expect(@student).to be_an_instance_of(Array)
        end
    end
end