require_relative '../student'
require_relative '../book'
require_relative '../classroom'
require_relative '../rental'
require_relative '../teacher'

describe Rental do
  before(:each) do
    @book = Book.new(title: 'In The Jungle', author: 'Vivian G')
    @book = Book.new(title: 'Ocean Of Tears', author: 'Moraa')
    @classroom = Classroom.new('Art')
    @student = Student.new(age: 24, classroom: @classroom.label, name: 'Claude', parent_permission: false)
    @teacher = Teacher.new(age: 43, specialization: 'Art', name: 'Miss Kavwana')
    @student = Student.new(age: 22, classroom: @classroom.label, name: 'Muriithi', parent_permission: true)
    @rental_one = Rental.new('2022/03/07', @student, @book)
    @rental_two = Rental.new('2022/03/12', @teacher, @book)
    @rental_three = Rental.new('2022/03/15', @student, @book)
  end

  it 'confirm student rental date matches' do
    expect(@rental_one.date).to match '2022/03/07'
  end

  it 'confirms the first student a rental is an instance of student' do
    expect(@rental_one.person).to be_instance_of Student
  end

  it 'confirms the second person, the teacher is an instance of teacher' do
    expect(@rental_two.person).to be_instance_of Teacher
  end

  it 'confirms whether student is in the list of rentals' do
    expect(@student.rentals).to include @rental_one
  end

  it 'confirms whether teacher is in the list of rentals' do
    expect(@teacher.rentals).to include @rental_two
  end

  it 'confirms whether student is in the list of rentals' do
    expect(@student.rentals).to include @rental_three
  end

  it 'confirms whether the book is in the list of rentals' do
    expect(@book.rentals.size).to be 3
  end
  it 'shows the rental instance' do
    expect(@rental_one).to be_instance_of Rental
  end
end
