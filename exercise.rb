class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # replace words with 5 or more letters in the 'str' argument
      str.gsub(/\b[A-Za-z]{5,}\b/) do |word|
      # Check of the word is capitalized and replace with "Marklar" otherwise replace with "marklar"
        if word.capitalize == word
          "Marklar"
        else
          "marklar"
        end
    end
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # initialize variables for the first two terms in the sequence
    term1 = 1
    term2 = 1

    # initialize a variable to keep track of the sum of even numbers
    even_sum = 0

    # iterate from the third term up to the nth term
    for i in 3..nth
      # calculate the next term in the sequence as the sum of the previous two terms
      next_term = term1 + term2
      
      # check if the next term is even, and add it to the sum if it is
      if next_term % 2 == 0
        even_sum += next_term
      end
      
      # update the values of the previous two terms
      term1, term2 = term2, next_term
    end

    # return the sum of even numbers in the sequence
    return even_sum
  end

end
