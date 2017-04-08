# Quicksort
## worst-case: O(n^2)
## average-case: O(n * log(n))

## PSEUDOCODE

# 1. Divide by choosing any element in the subarray array[p..r]. Call this element the 'pivot'

# 2. PARTITIONING - Rearrange the elements in array[p..r] so that all other elements in array[p..r] that are <= the pivot are to its left and elements in array [p..r] >= the pivot are to the pivot's right.

# let q = the index of the pivot
# 3. CONQUER - Recursively sort the subarrays array[p..q-1] (all elements to the left of the pivot, which must be <= the pivot) and array[q+1..r] (all elements to the right of the pivot, which must be > pivot)

# 4. COMBINE - DO NOTHING. Once the conquer step is done the array is sorted because all elements to the left of the pivot are <= the pivot and sorted, and, all the elements to the right of the pivot are > the pivot and sorted. Therefore, the elements in array[p..r] cannot help but be sorted

def quicksort(nums)
  if (nums.length <= 1) then return nums end

  pivot = nums[nums.length - 1]
  left = []
  right = []

  i = 0
  while (i < nums.length - 1)
    if (nums[i] < pivot)
      left.push(nums[i])
    else
      right.push(nums[i])
    end
    i += 1
  end

  sortedLeft = quicksort(left)
  sortedRight = quicksort(right)

  return sortedLeft + [pivot] + sortedRight

end

p quicksort([1,5,6,7,8,9,1,4,7,2])
