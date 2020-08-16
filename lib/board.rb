class Board
    attr_accessor :board, :players
    def initialize(player1, player2)
        @board = Array.new(6) {Array.new(7, " ")}
        @players = [player1, player2]
    end

    def horizontal_win(sym)
        self.board.each do |row|
            count = 0
            i = 0
            while i < 7
                if row[i] == sym
                    count += 1
                else 
                    count = 0
                end
                i += 1
                return true if count == 4
            end
        end
        false
    end

    def vertical_win(sym)
        tranposed_board = self.board.transpose
        tranposed_board.each do |row|
            count = 0
            i = 0
            while i < 7
                if row[i] == sym
                    count += 1
                else 
                    count = 0
                end
                i += 1
                return true if count == 4
            end
        end
        false
    end

    def left_right_diagonal(sym)
        self.board.each_with_index do |row, row_i|
            row.each_with_index do |col, col_i|
                b = self.board
                y = row_i
                x = col_i
                return true if b[y][x] == sym && b[y + 1][x + 1] == sym && b[y + 2][x + 2] == sym && b[y + 3][x + 3] == sym
            end
        end
        false
    end
    
    def right_left_diagonal(sym)
        reversed_board = reverse(self.board)
        reversed_board.each_with_index do |row, row_i|
            row.each_with_index do |col, col_i|
                b = reversed_board
                y = row_i
                x = col_i
                return true if b[y][x] == sym && b[y + 1][x + 1] == sym && b[y + 2][x + 2] == sym && b[y + 3][x + 3] == sym
            end
        end
        false
    end

    def reverse(board)
        reversed_board = []
        board.each do |row|
            reversed_board << row.reverse
        end
        reversed_board
    end

    def win?(sym)
        return true if horizontal_win(sym) || vertical_win(sym) || left_right_diagonal(sym) || right_left_diagonal(sym)
        false
    end

    def place(pos, sym)
        y, x = pos
        if self.board[y][x] == " "
            self.board[y][x] = sym
        else
            false
        end
    end

    def empty_spaces_remaining?
        self.board.each do |row|
            return true if row.any? {|el| el == " "}
        end
        false
    end

    
end