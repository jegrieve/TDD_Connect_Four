class Human
    attr_reader :name, :sym
    def initialize(name, sym)
        @name = name
        @sym = sym
    end

    def get_input #convert input into array
       puts "enter input"
       input = gets.chomp
    end
end