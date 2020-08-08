require "./lib/board.rb"

describe Board do
    describe "#initialize" do 
        it "should create a 6 by 7 grid" do
            grid = Board.new
            expect(grid.board.length).to eql(6)
            expect(grid.board[0].length).to eql(7)
        end

        it "should have default values of empty string" do
            grid = Board.new
            i = 0
            valid = true
            while valid
                valid = false if !grid.board[i].all?(" ")   
                i += 1
                break if i = 7                
            end
            expect(valid).to eql(true)
        end
    end
end