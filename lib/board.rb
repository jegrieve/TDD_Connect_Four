# umbrella = "\u2614"
# puts umbrella.encode('utf-8')

# rain = "\u26C6"
# puts rain.encode('utf-8')

class Board
    attr_accessor :board
    def initialize
        @board = Array.new(6) {Array.new(7, " ")}
    end
end

a = Board.new
p a.board