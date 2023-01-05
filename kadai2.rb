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
      puts "#{name} #{total_price}vnd "
    end
  
    def info
      puts "#{price}vnd #{name}"
    end
  end
  
menu1 = Menu.new
menu2 = Menu.new
menu3 = Menu.new
menu1.name = 'Phở'
menu1.price = 30_000
menu2.name = 'Bún hả'
menu2.price = 40_000
menu3.name = 'Bánh mì'
menu3.price = 20_000
menus = [menu1, menu2, menu3]
# menu1に対してget_total_priceメソッドを呼び出してください
menus.each do |menu|
    menu.info
end
  