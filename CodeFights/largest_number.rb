=begin
Problem

Given an integer n, return the largest number that contains exactly n digits.
=end

def largest_number(n)
    largestNumberString = ""
    n.times { |n| largestNumberString += "9" }
    largestNumberString.to_i
end
