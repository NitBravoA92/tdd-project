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

  context 'fizzbuzz method' do
    it 'should return the word: fizzbuzz when the input is: 15' do
      input = 15
      expected_output = 'fizzbuzz'
      expect(@solver.fizzbuzz(input)).to eq(expected_output)
    end

    it 'should return the word: fizzbuzz when the input is: 30' do
      input = 30
      expected_output = 'fizzbuzz'
      expect(@solver.fizzbuzz(input)).to eq(expected_output)
    end

    it 'should return the word: fizz when the input is: 6' do
      input = 6
      expected_output = 'fizz'
      expect(@solver.fizzbuzz(input)).to eq(expected_output)
    end

    it 'should return the word: buzz when the input is: 25' do
      input = 25
      expected_output = 'buzz'
      expect(@solver.fizzbuzz(input)).to eq(expected_output)
    end

    it 'should return the string: 7 when the input is: 7' do
      input = 7
      expected_output = '7'
      expect(@solver.fizzbuzz(input)).to eq(expected_output)
    end

    it 'should return the string: 13 when the input is: 13' do
      input = 13
      expected_output = '13'
      expect(@solver.fizzbuzz(input)).to eq(expected_output)
    end
  end
end
