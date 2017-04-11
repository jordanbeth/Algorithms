=begin
Problem

You are given a two-digit integer n. Return the sum of its digits.
=end

def add_two_digits(n)
  n.to_s.split("").map(&:to_i).reduce(:+)
end
