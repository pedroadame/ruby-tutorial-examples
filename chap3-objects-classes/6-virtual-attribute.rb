class Book
  attr_reader :isbn
  attr_accessor :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = price
  end
# price_in_cents seems to exist to outside, but in fact in doesn't
  def price_in_cents
    Integer(price*100 + 0.5)
  end

  def price_in_cents=(price_in_cents)
    @price = price_in_cents / 100
  end
end

book = Book.new("isbn1", 12.29)
puts book.price
puts book.price_in_cents
book.price_in_cents = 3850
puts book.price
puts book.price_in_cents

