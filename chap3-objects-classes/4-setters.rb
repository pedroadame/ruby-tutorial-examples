class Book

  attr_reader :isbn, :price

  #Called 'constructor' in other languages
  def initialize(isbn, price)
    #Instance variables start with @
    @isbn = isbn
    @price = Float(price)
  end
  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end
  #Setter, note the equals
  def price=(new_price)
    @price = Float(new_price)
  end
end

book = Book.new("isbn1", 12.12)
puts "Price = #{book.price}"
book.price = book.price * 0.75
puts "Price = #{book.price}"