=begin
Problem

- Implement a function that takes two strings, s and x, as arguments and finds the first occurrence of the string x in s.

- The function should return an integer indicating the index in s of the first occurrence of x.

- If there are no occurrences of x in s, return -1.

examples:
For s = "CodefightsIsAwesome" and x = "IA", the output should be
strstr(s, x) = -1;
For s = "CodefightsIsAwesome" and x = "IsA", the output should be
strstr(s, x) = 10.
=end


def strstr(s, x)
  x_length = x.length
  boundary = s.length - x_length + 1
  first_x = x[0]
  second_x = x[1]
  i = 0

  while (i < boundary)
    if (s[i] == first_x) && (s[i+1] == second_x)
      if (s[i...i+x_length] == x)
        return i
      end
    end
    i += 1
  end

  return -1
end
