require 'ostruct'

class Cart
  attr_accessor :items
  attr_accessor :total

  def initialize
    @items = []
    @total = 0
  end

  def add_item(item)
    @items << item
  end

  def total_price
    @items.inject(0){|sum, item| sum += item.price }
  end
end

describe Cart do
  before :each do
    @cart = Cart.new
  end

  it "an empty cart should no longer be empty after adding an item " do
    item = OpenStruct.new({name: 'goggles', price: 5.99})
    @cart.add_item(item)
    @cart.items.should_not be_empty
  end

  it "should correctly sum up the item prices" do
    item = OpenStruct.new({name: 'goggles', price: 5.99})
    @cart.add_item(item)
    @cart.total.should eq(5.99)
  end

end