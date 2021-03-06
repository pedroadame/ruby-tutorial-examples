class Book
  #Called 'constructor' in other languages
  def initialize(isbn, price)
    #Instance variables start with @
    @isbn = isbn
    @price = Float(price)
  end
  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end
  def isbn
    @isbn
  end
  def price
    @price
  end
end

a_book = Book.new('1-2-3-4', '12.23')
puts a_book.isbn
puts a_book.price