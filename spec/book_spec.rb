require_relative '../book'

describe Book do
  before :each do
    @book = Book.new(title: 'Forest', author: 'Mary_G')
  end

  it 'ensures book title is correct' do
    expect(@book.title).to match 'Forest'
  end

  it 'confirms the name of the author is correct' do
    expect(@book.author).to match 'Mary_G'
  end

  it 'checks book to confirm its instance' do
    expect(@book).to be_instance_of Book
  end
end
