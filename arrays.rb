=begin
An array is a type of data structure that stores elements of the same type in a contiguous block of memory. In an array, A, of size N, each memory location has some unique index, (where 0 <= i < N ), that can be referenced as A[i] (you may also see it written as A[i]).

Given an array, A, of N integers, print each element in reverse order as a single line of space-separated integers.

=end
puts "Pick a length."
n = gets.strip.to_i

puts "Insert a list of numbers separated by a space."
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

result = " "
arr.reverse.each do |n|
    result += n.to_s
    result += " "
end

puts result.strip
