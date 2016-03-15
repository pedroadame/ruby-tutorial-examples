require 'csv'
require_relative 'book_in_stock'

class CsvReader
  def initialize
    @books = []
  end

  def read_csv_data(csv_file_name)
    CSV.foreach(csv_file_name, headers: true) do |row|
      @books << BookInStock.new(row['ISBN'], row['Price'])
    end
  end
  def total_value
    sum = 0.0
    @books.each {|book| sum += book.price}
    sum
  end

end
