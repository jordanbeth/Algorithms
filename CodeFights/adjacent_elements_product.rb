=begin
Problem: adjacentElementsProduct

- Given an array of integers, find the pair of adjacent elements that has the largest product and return that product.
=end

def adjacentElementsProduct(inputArray)
    largest_product = [inputArray[0], inputArray[1]]
    inputArray.each_cons(2).with_index do |n|
        if (n[0]*n[1]) > (largest_product[0] * largest_product[1])
            largest_product[0] = n[0]
            largest_product[1] = n[1]
        end
    end
    largest_product[0]*largest_product[1]
end
