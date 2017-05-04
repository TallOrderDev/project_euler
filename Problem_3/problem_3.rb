
# Found online after trying to code for far to long

require "prime"

def largest_prime_factor(given_num)
    given_num.prime_division.last[0]
end

puts largest_prime_factor(600851475143)
