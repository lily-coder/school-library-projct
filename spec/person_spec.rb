require_relative '../corrector'
require_relative '../person'

describe Person do
  before(:each) do
    @corrector = Corrector.new
    @person = Person.new(age: 28, name: 'mucyo', parent_permission: true)
  end

  it 'validate name' do
    expect(@person.validate_name).to match 'Mucyo'
  end

  it 'confirms the permisiion of use of services for allowed persons true' do
    expect(@person.can_use_services?).to be true
  end

  it 'confirms the permisiion of use of services for under age persons false' do
    person = Person.new(age: 12, name: 'moraa', parent_permission: false)
    expect(person.can_use_services?).to be false
  end

  it ' show person instance' do
    expect(@person).to be_instance_of Person
  end
end
