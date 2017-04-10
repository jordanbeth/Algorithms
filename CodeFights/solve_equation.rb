=begin
Problem Solve Equation

- You are given an equations as a string s, represented as ax + by + c = 0, where a ≠ 0 and b ≠ 0. Your task is to solve r in terms of s, where r is a either kx or ly.

- Since there are several ways to solve the task, return the answer either as my+f or nx+d.

Example

* For s = "3x+2y-4=0" and r = "-9x"

solveEquation(s,r) = "6y-12".
"3x + 2y + -4=0" ⇒ "3x=-2y+4" ⇒ "-3x=2y-4", which means that "-9x=6y-12
=end
# Works in general cases.. revisit
def solveEquation(s, r)
  a = /(\W?\d*)x/.match(s)[1].to_i.to_f
  b = /(\W?\d*)y/.match(s)[1].to_i.to_f
  c = s.scan(/([-+]\d)/)[1][0].to_i.to_f
  r_coeff = /([+-]\d*)/.match(r)
  r_coeff ? r_coeff = r_coeff[1].to_i.to_f : r_coeff = 1;
  result = ""

  if (r[-1] == "x")
    b = (-1 * b)/a * r_coeff.to_f
    c = (c.to_f / a.to_f) * r_coeff.to_f
    result += "#{b.to_f.to_r}y-#{c.to_f.to_r}"
  elsif (r[-1] == "y")
    a = (-1 * a)/b * r_coeff.to_f
    c = (c / b) * r_coeff.to_f
    result += "#{a.to_f.to_r}x-#{c.to_f.to_r}"
  end

  return result
end
