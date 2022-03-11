require_relative '../teacher'

describe Teacher do
  before(:each) do
    @teach = Teacher.new(age: 56, specialization: 'Maths', name: 'Mr Njoroge')
  end

  it 'confirms teacher inheritance from class Person' do
    expect(@teach).to be_kind_of Person
  end

  it 'confirms the teacher age to be correct' do
    expect(@teach.age).to eql 56
  end

  it 'confirms the name is correct' do
    expect(@teach.name).to match 'Mr Njoroge'
  end

  it 'confirms the teacher specialization to be Maths' do
    expect(@teach.specialization).to match 'Maths'
  end

  it 'confirms instance of teacher' do
    expect(@teach).to be_instance_of Teacher
  end
end