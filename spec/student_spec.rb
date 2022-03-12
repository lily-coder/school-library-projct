require_relative '../classroom'
require_relative '../person'
require_relative '../student'

describe Student do
  before(:each) do
    @classroom = Classroom.new('Science')
    @student = Student.new(age: 22, classroom: @classroom.label, name: 'Adrian', parent_permission: true)
  end

  it 'confirms student inherits from person' do
    expect(@student).to be_kind_of Person
  end

  it 'confirms play hooky is false' do
    expect(@student.play_hooky).not_to match '/()/'
  end

  it 'confirms classroom label is same as classroom name' do
    expect(@student.classroom).to eql @classroom.label
  end

  it 'confirms the student instance' do
    expect(@student).to be_instance_of Student
  end
end
