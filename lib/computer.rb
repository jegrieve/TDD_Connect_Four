class Computer
    attr_reader :name, :sym
    def initialize(name, sym)
        @name = name
        @sym = sym
    end

    def get_input
        y = rand((0..5))
        x = rand((0..6))
        input = [y, x]
     end
end