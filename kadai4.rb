class Bingo
    attr_accessor :b
    attr_accessor :i
    attr_accessor :n
    attr_accessor :g
    attr_accessor :o

    def generate_card
        self.b = (1..15).to_a.sample(5)
        self.i = (16..30).to_a.sample(5)
        self.n = (31..45).to_a.sample(5)
        self.g = (46..60).to_a.sample(5)
        self.o = (61..75).to_a.sample(5) 
    end
    def show_card
        printf("+----+----+----+----+----+\n")
        printf("| %2s | %2s | %2s | %2s | %2s |\n",'B','I', 'N', 'G', 'O')
        printf("+----+----+----+----+----+\n")
        printf("| %2d | %2d | %2d | %2d | %2d |\n",self.b[0],self.i[0], self.n[0], self.g[0], self.o[0])
        printf("+----+----+----+----+----+\n")
        printf("| %2d | %2d | %2d | %2d | %2d |\n",self.b[1],self.i[1], self.n[1], self.g[1], self.o[1])
        printf("+----+----+----+----+----+\n")
        printf("| %2d | %2d | %2s | %2d | %2d |\n",self.b[2],self.i[2], " ", self.g[2], self.o[2])
        printf("+----+----+----+----+----+\n")
        printf("| %2d | %2d | %2d | %2d | %2d |\n",self.b[3],self.i[3], self.n[3], self.g[3], self.o[3])
        printf("+----+----+----+----+----+\n")
        printf("| %2d | %2d | %2d | %2d | %2d |\n",self.b[4],self.i[4], self.n[4], self.g[4], self.o[4])
        printf("+----+----+----+----+----+\n")
    end
end

bingo1 = Bingo.new

bingo1.generate_card
bingo1.show_card