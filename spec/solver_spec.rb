require 'rspec'
require_relative '../solver'

RSpec.describe Solver do
  describe '#factorial' do
    it 'returns 1 when given 0' do
      solver = Solver.new
      expect(solver.factorial(0)).to eq(1)
    end

    it 'returns the correct factorial for a positive integer' do
      solver = Solver.new
      expect(solver.factorial(5)).to eq(120)
    end

    it 'raises an exception for a negative integer' do
      solver = Solver.new
      expect { solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end

  describe '#reverse' do
    it 'returns the reversed word' do
      solver = Solver.new
      expect(solver.reverse('hello')).to eq('olleh')
    end
  end

end
