require "./lib/game.rb"

describe Game do
    describe "#initialize" do
        it "should take in two player arguments and pass them into Board.new" do
            g = Game.new("Jack", "John")
            expect(g.game_board.players).to eql(["Jack","John"])
    end
end
    describe "#run" do
        it "should run until win? or tie? conditions return true" do
            a = Human.new("jack", " ")
            g = Game.new(a, "John")
            expect(g.run).to eql(true)
    end
end
end