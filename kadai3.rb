class Menu
    attr_accessor :name
    attr_accessor :price
    # get_total_priceメソッドを定義してください
    def initialize(name:, price:)
        @name = name
        @price = price
    end

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
class Drink < Menu
    def initialize(name:, price:)
        super(name: name, price: price)
    end
end
menu1 = Menu.new(name:'Phở', price:30_000)
menu2 = Menu.new(name:'Bún Chả', price:40_000)
menu3 = Menu.new(name:'Bánh mì', price:20_000)
drink1 = Drink.new(name:'Trà(Sサイズ)', price:5_000)
drink2 = Drink.new(name:'Trà(Mサイズ)', price:10_000)

menus = [menu1, menu2, menu3, drink1, drink2]

# menu1に対してget_total_priceメソッドを呼び出してください
menus.each do |menu|
    menu.info
end
  