=begin
Problem

- Have the function LetterCapitalize(str) take the str parameter being passed and capitalize the first letter of each word.
- Words will be separated by only one space. 
=end

def LetterCapitalize(str)
  new_str = ""
  str.split(" ").each {|word| new_str += word.capitalize + " "}
  return new_str
end

# allows user input from the command line
puts LetterCapitalize(STDIN.gets)
