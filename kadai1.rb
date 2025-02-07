class Menu
  attr_accessor :name
  attr_accessor :price
  # get_total_priceメソッドを定義してください
  def get_total_price(num)
    total_price = 0
    total_price += if num > 3
                     price * num - 10_000
                   else
                     price * num
                   end
    "#{name} #{total_price}vnd"
  end
end

menu1 = Menu.new
menu1.name = 'Phở'
menu1.price = 30_000

# menu1に対してget_total_priceメソッドを呼び出してください
puts menu1.get_total_price(5)
