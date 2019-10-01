require 'rspec'
require_relative 'factorial.rb'

describe Factorial do
    let!(:calculator) {Factorial.new}

    it "finds the factorial of 5" do
        expect(calculator.factorial_of(5)).to_eq(120)
    end
end
