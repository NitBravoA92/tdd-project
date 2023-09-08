class Solver
  def factorial(number)
    raise 'Invalid input' if number.negative? # throws an exception when the number is negative

    return 1 if number.zero? # base case

    number * factorial(number - 1) # recursive call
  end

  def reverse(word)
    return word if word.length <= 1 # words with 1 or less characters

    word.reverse # reverse the word
  end

  def fizzbuzz(number)
    return 'fizzbuzz' if (number % 15).zero? # numbers divisible by 3 and 5

    return 'fizz' if (number % 3).zero? # numbers divisible by 3

    return 'buzz' if (number % 5).zero? # numbers divisible by 5

    number.to_s # numbers not divisible by 3 or 5
  end
end
