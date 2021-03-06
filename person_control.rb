require './person'
require './student'
require './teacher'

class PersonControl
  def initialize(arg)
    @persons = arg
  end

  def add_teacher
    name, age = name_and_age
    print 'Specialization: '
    specialization = gets.chomp
    @persons.push(Teacher.new(age: age, specialization: specialization, name: name))
    puts('Person has been added successfully!')
  end

  def add_student
    name, age = name_and_age
    print 'Do you have parents permission? [Y/N]:  '
    parent_permission = gets.chomp != 'n'
    @persons.push(Student.new(age: age, classroom: 'Coding Class', name: name, parent_permission: parent_permission))
    puts('Person has been added successfully!')
  end

  def mod_person
    print 'Do you want to add a student(1) or a teacher(2)? [Enter a number]: '
    choice = gets.chomp.to_i
    case choice
    when 1
      add_student
    when 2
      add_teacher
    end
  end

  def display_person
    puts 'All persons are: '
    @persons.each do |person|
      puts "[#{person.class.name.split('::').last}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age},"
    end
  end

  def name_and_age
    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp

    [name, age]
  end

  private(:add_student, :add_teacher, :name_and_age)
end
