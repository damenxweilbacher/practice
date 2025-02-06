require_relative '../calculator'

RSpec.describe Calculator do
  describe '#add' do
    it 'returns the sum of two numbers' do 
      calculator = Calculator.new 
      expect(calculator.add(2, 3)).to eq(5)
    end
  end    
end  