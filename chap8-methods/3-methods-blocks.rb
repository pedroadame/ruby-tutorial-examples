class TaxCalc
  def initialize(name, &block)
    @name, @block = name, block
  end

  def get_tax(amount)
    "#@name on #{amount} = #{@block.call(amount)}"
  end
end

tc = TaxCalc.new("Pene") {|mt| mt * 0.21}

puts tc.get_tax(100)
