=begin
Problem

Given a divisor and a bound, find the largest integer N such that:
    - N is divisible by divisor.
    - N is less than or equal to bound.
    - N is greater than 0.

It is guaranteed that such a number exists.
=end

def maxMultiple(divisor, bound)
  while bound
    return bound if bound % divisor == 0
    bound -= 1
  end
end
