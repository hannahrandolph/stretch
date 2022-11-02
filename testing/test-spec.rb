require 'rspec/autorun'

class Practice
    def times_two(arg1)
        arg1 * 2
    end
       
    def sum(arg1, arg2)
        arg1 + arg2
    end
end

describe Practice do
    let(:practice) {Practice.new}

    it "multiplies number by two" do
        expect(practice.times_two(3)).to eq(6)
    end

    it "allows for decimals" do
        expect(practice.times_two(1.5)).to eq(3) 
    end

    it "adds two numbers" do
        expect(practice.sum(2,3)).to eq(5)
    end

    it "breaks with strings" do
        expect {practice.times_two("hello")}.to raise_error
    end
    # test fails currently, as strings are not being stopped
    # Failure/Error: expect {practice.times_two("hello")}.to raise_error
    # expected Exception but nothing was raised
end


