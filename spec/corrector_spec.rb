require_relative '../corrector'

describe Corrector do
  it 'corrects name to given format' do
    correct = Corrector.new
    name = 'lilyondiecoder'
    expect(correct.correct_name(name)).to match 'Lilyondiec'
  end

  it 'validate nil values' do
    correct = Corrector.new
    expect(correct.correct_name('')).to eql ''
  end

  it 'confirms the instance of corrector class' do
    corrector = Corrector.new
    expect(corrector).to be_instance_of Corrector
  end
end
