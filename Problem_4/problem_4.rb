# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

class Palindrom

  def initialize(size)
    @palindroms = []
    @factor1 =  (57.chr * size).to_i # for 2 = 99
    @min_num = (57.chr * (size - 1)).to_i + 1 # for 2 = 10
  end

  def largest_palindrom
    check_factor_for_size
    return_largest_palindrom
  end

  private

  def check_factor_for_size
    until @factor1 <= @min_num
      run_palindrom_math
    end
  end

  def run_palindrom_math
      i = 0
      while i < 20
        multiply_for_palindrom
        @factor1 -= 1
        i += 1
      end
  end

  def check_palindrome(product)
    if product == product.to_s.reverse.to_i
      @palindroms << product
    end
  end

  def multiply_for_palindrom
    factor2 = @factor1
    i = 0
    while i < 20
      prod = @factor1 * (factor2 - i)
      check_palindrome(prod)
      i += 1
    end
  end

  def return_largest_palindrom
    puts @palindroms.max
  end

end

# DRIVE CODE!!!! -------------------========================-----------------

Palindrom.new(3).largest_palindrom
