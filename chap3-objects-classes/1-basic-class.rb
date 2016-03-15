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
end

a_book = Book.new('1-2-3-4', 56)
p a_book
another_book = Book.new('4-3-2-1', 12.20)
p another_book
whoah_another_book = Book.new('1', '13.43')
puts whoah_another_book #Calls to_s


#Look how Float(price) works in the initializer.
#You can pass a string, a float or an integer.
