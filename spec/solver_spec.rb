require_relative '../solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  context 'factorial method' do
    it 'should return the factorial of the number: 0' do
      input = 0
      expected_output = 1
      result = @solver.factorial(input)
      expect(result).to eq(expected_output)
    end

    it 'should return the factorial of the number: 10' do
      input = 10
      expected_output = 3_628_800
      result = @solver.factorial(input)
      expect(result).to eq(expected_output)
    end

    it 'should raise an exception when the input number is negative' do
      input = -4
      expected_output = 'Invalid input'
      expect { @solver.factorial(input) }.to raise_error(expected_output)
    end

    it 'should return the factorial of the number: 3' do
      input = 3
      expected_output = 6
      result = @solver.factorial(input)
      expect(result).to eq(expected_output)
    end
  end
  context 'reverse method' do
    it "should return the reverse of the string: 'hello'" do
      input = 'hello'
      expected_output = 'olleh'
      result = @solver.reverse(input)
      expect(result).to eq(expected_output)
    end

    it "should return the reverse of the string: 'developer'" do
      input = 'developer'
      expected_output = 'repoleved'
      result = @solver.reverse(input)
      expect(result).to eq(expected_output)
    end
  end
end
