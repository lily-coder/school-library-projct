require_relative '../student'
require_relative '../classroom'

describe Classroom do
  before(:each) do
    @classroom = Classroom.new('Violet')
    @student = Student.new(age: 23, classroom: @classroom.label, name: 'Jane', parent_permission: true)
  end

  it 'adds student' do
    @classroom.add_student(@student)
    expect(@classroom.students).to include @student
  end

  it 'confirms the class label matches' do
    expect(@classroom.label).to eql @student.classroom
  end

  it 'confirms the length of student array' do
    @student1 = Student.new(age: 20, classroom: @classroom.label, name: 'Lilian', parent_permission: false)
    @student2 = Student.new(age: 25, classroom: @classroom.label, name: 'Marylin', parent_permission: true)
    @student3 = Student.new(age: 23, classroom: @classroom.label, name: 'Moraa', parent_permission: true)
    @classroom.add_student(@student)
    @classroom.add_student(@student1)
    @classroom.add_student(@student2)
    @classroom.add_student(@student3)
    expect(@classroom.students.size).to be 4
  end

  it 'checks the classroom instance' do
    expect(@classroom).to be_instance_of Classroom
  end
end
