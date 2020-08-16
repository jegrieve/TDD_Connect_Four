class Human
    attr_reader :name, :sym
    def initialize(name, sym)
        @name = name
        @sym = sym
    end

    def get_input 
       puts "enter row position (0 for top row, 1 for second row etc.)"
       input = []
       y = gets.chomp.to_i
       puts "enter col position (0 for first col, 1 for second col etc.)"
       x = gets.chomp.to_i
       input << y
       input << x
       input
       p input
    end
end
