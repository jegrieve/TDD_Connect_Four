require "./lib/board.rb"

describe Board do
    describe "#initialize" do 
        it "it should create a 6 by 7 grid" do
            grid = Board.new("a","b")
            expect(grid.board.length).to eql(6)
            expect(grid.board[0].length).to eql(7)
        end

        it "it should have default values of empty string" do
            grid = Board.new("a","b")
            i = 0
            valid = true
            while valid
                valid = false if !grid.board[i].all?(" ")   
                i += 1
                break if i == 6                
            end
            expect(valid).to eql(true)
        end

        it "it should have an array instance variable for players, and set the instance to the arguments" do
            grid = Board.new("a","b")
            expect(grid.players).to eql(["a","b"])
        end
    end

     describe "#win?" do

        it "return false if no win conditions are not met" do
            board = Board.new("a","b")
            expect(board.win?(:X)).to eql(false)
        end

        it "return true if there is a horizontal win" do
            board = Board.new("a","b")
            board.place([0,0], :X)
            board.place([0,1], :X)
            board.place([0,2], :X)
            board.place([0,3], :X)
            expect(board.win?(:X)).to eql(true)
        end

        it "return true if there is a vertical win" do
            board = Board.new("a","b")
            board.place([0,0], :X)
            board.place([1,0], :X)
            board.place([2,0], :X)
            board.place([3,0], :X)
            expect(board.win?(:X)).to eql(true)
        end

        it "return true if there is a right-to-left diagonal win" do
            board = Board.new("a","b")
            board.place([0,6], :X)
            board.place([1,5], :X)
            board.place([2,4], :X)
            board.place([3,3], :X)
            expect(board.win?(:X)).to eql(true)
        end

        it "return true if there is a left-to-right-diagonal win" do
            board = Board.new("a","b")
            board.place([0,0], :X)
            board.place([1,1], :X)
            board.place([2,2], :X)
            board.place([3,3], :X)
            expect(board.win?(:X)).to eql(true)
        end
    end
end