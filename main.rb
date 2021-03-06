require_relative 'rental_control'
require_relative 'person_control'
require_relative 'book_control'
require_relative 'data_storage'

class Menu
  attr_accessor :persons, :books

  def initialize
    @storage = Storage.new
    @persons = @storage.parse[:persons]
    @books = @storage.parse[:books]
    @rentals = @storage.parse[:rentals]
    @rental = RentalControl.new({ rentals: @rentals, persons: @persons, books: @books })
    @person = PersonControl.new(@persons)
    @book = BookControl.new(@books)
  end

  def select_option
    puts 'Please choose an option by entering a number::'
    choose_options = %(
      1- List all books
      2- List all People
      3- Create a Person
      4- Create a Book
      5- Create a Rental
      6- List all Rentals for given id
      7- Exit).split('\n')
    choose_options.map { |choose| puts choose }
  end

  def menu
    select_option
    options = gets.chomp.to_i
    case options
    when 1
      @book.display_books
      sleep 1
      menu
    when 2
      @person.display_person
      sleep 1
      menu
    when 3
      puts 'Create a Person'
      @person.mod_person
      sleep 1
      menu
    when 4
      puts 'Create a book'
      @book.add_book
      sleep 1
      menu
    when 5
      @rental.add_rental
      sleep 1
      menu
    when 6
      @rental.display_rental
      sleep 1
      menu
    else
      puts 'Thank you for using our app !'
      @storage.stringify_data(@persons, @books, @rentals)
    end
  end
end

def main
  puts 'Welcome to School Library App!'

  puts
  test = Menu.new
  test.menu
end

puts(main)
