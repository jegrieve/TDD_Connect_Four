require "./lib/computer.rb"

describe Computer do
    describe "#initialize" do
        it "it should take in name input and set it to instance variable" do
            computer = Computer.new("Jack", "X")
            expect(computer.name).to eql("Jack")
    end

        it "it should take in a symbol input and set it to instance variable" do
        computer = Computer.new("Jack", "X")
        expect(computer.sym).to eql("X")
    end
end

    describe "#get_input" do 
         it "it should return two random numbers, first number from 0-5, second number from 0-6" do
             computer = Computer.new("Jack", "X")
             valid_first = (0..5).to_a
             valid_second = (0..6).to_a
             expect(computer.get_input.length).to eql(2)
             expect(valid_first.include?(computer.get_input.first)).to eql(true)
             expect(valid_second.include?(computer.get_input.last)).to eql(true)
         end
     end
end