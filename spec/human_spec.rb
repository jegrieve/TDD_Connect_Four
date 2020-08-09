require "./lib/human.rb"

describe Human do
    describe "#initialize" do
        it "it should take in name input and set it to instance variable" do
            human = Human.new("Jack", "X")
            expect(human.name).to eql("Jack")
    end

        it "it should take in a symbol input and set it to instance variable" do
        human = Human.new("Jack", "X")
        expect(human.sym).to eql("X")
    end
end

    # describe "#get_input" do 
    #     it "it should take an input" do
    #         human = Human.new("Jack", "X")
    #         expect(human.get_input).to eql("test")
    #     end
    # end
end