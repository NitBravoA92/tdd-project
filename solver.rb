class Solver
  def factorial(number)
    raise 'Invalid input' if number.negative? # throws an exception when the number is negative

    return 1 if number.zero? # base case

    number * factorial(number - 1) # recursive call
  end
end
