require 'rspec'
require_relative 'factorial'

RSpec.describe Factorial do
    it "should give a factorial of 5" do
    expect(subject.factorial_of(5)).to_eq(120)
    end
end