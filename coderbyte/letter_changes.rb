=begin
Problem

Have the function LetterChanges(str) take the str parameter being passed and modify it using the following algorithm:
  - Replace every letter in the string with the letter following it in the alphabet (ie. c becomes d, z becomes a).
  - Then, capitalize every vowel in this new string (a, e, i, o, u).
  - Finally, return this modified string.
=end


def LetterChanges(str)
  new_str = ""
  vowels = ["a", "e", "i", "o", "u"]
  str.each_char do |c|
      if c == "z"
         new_str+= "a"
      else
        new_str += c.next
      end
  end
  
  new_str.split("").map! {|c| vowels.include?(c) ? c.upcase : c;}.join("")
end

# allows user input from the command line
puts LetterChanges(STDIN.gets)
