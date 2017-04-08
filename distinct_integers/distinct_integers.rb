=begin
Given an array of sorted distinct integers named arr, write a function that returns an index i in arr for which arr[i] = i or -1 if no such index exists.

PSEUDOCODE
- iterate through the array using a while loop:

- keep a counter to store index / individual iterations

- compare value in the array (at that index i) to value of index i
  - return index i if arr[i] = i
  - else return -1
=end

def index_value_match(array)
  i = 0

  while i < array.length
    if array[i] == i
      return i
    end
    i += 1
  end

  return -1

end

## complexity is O(n) because we are searching the entire array one time looking for the index-value pair
