require 'pry-byebug'

class Exercise
  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".

  def self.marklar(str)
    words = str.split

    words.each_with_index do |word, index|

        if word.length > 4
            words[index] = replaced_with_marklar(word)

        end
    end

    return words.join(" ")

  end

  # helper to format strings
  def self.replaced_with_marklar(word)

      if word[0].match(/[[:upper:]]/)

          word = "Marklar"

      elsif word.match(/[[:punct:]]/)

          punct = word.match(/[[:punct:]]/)
          punct = punct.to_s
          word = "marklar"+ punct

      else

           word = "marklar"

      end

      return word

  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)

    result = 0

    even_fib = cal_fibonacci(nth)

    even_fib.each do |x|

        if x % 2 == 0
            result += x
        end
    end

    return result

  end

  # helper to calculate Fibonacci series
  def self.cal_fibonacci(num)

      result = [0,1]

      term1 = 0
      term2 = 1

      (2..num).each do |x|

          temp = term1 + term2
          term1 = term2
          term2 = temp
          result.push(temp)

      end

      return result
  end

end
