require_relative "board.rb"
require_relative "human.rb"
require_relative "computer.rb"

class Game
    attr_accessor :game_board
    def initialize(player1, player2)
        @game_board = Board.new(player1, player2)
        run
    end

    def run
        current_player = self.game_board.players
        while true
            display
            puts "#{current_player.first.name}'s Turn"
            input = current_player.first.get_input
            self.game_board.place(input,current_player.first.sym)
            if win?(current_player.first.sym)
                puts "#{current_player.first.name} wins!"
                break
            elsif tie
                puts "No one wins!"
                break
            end
            current_player.reverse!
        end
        puts "Game Over!"
        true
    end

    def win?(sym)
        return true if self.game_board.win?(sym)
        false
    end

    def tie
        return false if self.game_board.empty_spaces_remaining?
        true
    end

    def display
        self.game_board.board.each do |row|
            p row
        end
    end
end
    
if __FILE__ == $PROGRAM_NAME
    puts "Puts Welcome to Connect-Four"
    puts "Please Enter your name"
    name = gets.chomp
    puts "Please enter your symbol"
    sym = gets.chomp
    Game.new(Human.new(name, sym), Computer.new("Computer", :C ))
end
