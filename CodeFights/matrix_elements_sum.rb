=begin
Problem: matrixElementsSum

After becoming famous, CodeBots decided to move to a new building and live together.

- The building is represented by a rectangular matrix of rooms, each cell containing an integer - the price of the room.

- Some rooms are free (their cost is 0), but that's probably because they are haunted, so all the bots are afraid of them.

- That is why any room that is free or is located anywhere below a free room in the same column is not considered suitable for the bots.

Help the bots calculate the total price of all the rooms that are suitable for them.

example:
matrix = [[0, 1, 1, 2],
          [0, 5, 0, 0],
          [2, 0, 3, 3]]

output: matrixElementsSum(matrix) = 9
=end

def matrixElementsSum(matrix)
    transpose = matrix.transpose
    total = []
    i = 0
    if matrix.length == 1 && matrix[0][0] == 0
        return 0
    end
    while i < transpose.length
        j = 0
        while j < transpose[i].length
            if transpose[i][j] == 0 || transpose[i][j] == 'x'
               j +=1
               break
            else
               total << transpose[i][j]
               j +=1
            end
        end
     i +=1
    end
    return total.reduce(:+)
end
