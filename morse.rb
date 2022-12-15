def decode_char(morse_code)
  # Define a dictionary of Morse code characters
  morse_code_dict = {
    ".-" => "A",
    "-..." => "B",
    "-.-." => "C",
    "-.." => "D",
    "." => "E",
    "..-." => "F",
    "--." => "G",
    "...." => "H",
    ".." => "I",
    ".---" => "J",
    "-.-" => "K",
    ".-.." => "L",
    "--" => "M",
    "-." => "N",
    "---" => "O",
    ".--." => "P",
    "--.-" => "Q",
    ".-." => "R",
    "..." => "S",
    "-" => "T",
    "..-" => "U",
    "...-" => "V",
    ".--" => "W",
    "-..-" => "X",
    "-.--" => "Y",
    "--.." => "Z"
  }

  # Return the corresponding character in uppercase
  return morse_code_dict[morse_code].upcase
end

decode_char(".-") # Returns "A"
decode_char("-...") # Returns "B"

def decode_word(morse_code)
    # Define a dictionary of Morse code characters
    morse_code_dict = {
      ".-" => "A",
      "-..." => "B",
      "-.-." => "C",
      "-.." => "D",
      "." => "E",
      "..-." => "F",
      "--." => "G",
      "...." => "H",
      ".." => "I",
      ".---" => "J",
      "-.-" => "K",
      ".-.." => "L",
      "--" => "M",
      "-." => "N",
      "---" => "O",
      ".--." => "P",
      "--.-" => "Q",
      ".-." => "R",
      "..." => "S",
      "-" => "T",
      "..-" => "U",
      "...-" => "V",
      ".--" => "W",
      "-..-" => "X",
      "-.--" => "Y",
      "--.." => "Z"
    }
  
    # Split the Morse code string into individual characters
    morse_code_chars = morse_code.split(" ")
  
    # Decode each character and add it to the decoded string
    decoded_word = ""
    morse_code_chars.each do |char|
      decoded_word << morse_code_dict[char].upcase
    end
  
    # Return the decoded word
    return decoded_word
  end

  decode_word("-- -.--") # Returns "MY"
  decode_word(".- -... -.-.") # Returns "ABC"

  # Define a hash that maps each Morse code character to its corresponding
# letter or number
MORSE_CODE = {
  ".-" => "A",
  "-..." => "B",
  "-.-." => "C",
  "-.." => "D",
  "." => "E",
  "..-." => "F",
  "--." => "G",
  "...." => "H",
  ".." => "I",
  ".---" => "J",
  "-.-" => "K",
  ".-.." => "L",
  "--" => "M",
  "-." => "N",
  "---" => "O",
  ".--." => "P",
  "--.-" => "Q",
  ".-." => "R",
  "..." => "S",
  "-" => "T",
  "..-" => "U",
  "...-" => "V",
  ".--" => "W",
  "-..-" => "X",
  "-.--" => "Y",
  "--.." => "Z",
  "-----" => "0",
  ".----" => "1",
  "..---" => "2",
  "...--" => "3",
  "....-" => "4",
  "....." => "5",
  "-...." => "6",
  "--..." => "7",
  "---.." => "8",
  "----." => "9"
}

# Define a method that takes a string of Morse code as input and returns
# the corresponding string of letters and numbers
def decode_morse(code)
  # Split the input string into an array of individual Morse code words,
  # separated by 3 spaces
  words = code.split("   ")

  # Map each Morse code word to its corresponding string of letters and
  # numbers, and join the resulting array into a single string, separated
  # by a single space
  words.map do |word|
    # Split the Morse code word into an array of individual Morse code
    # characters, separated by a single space
    chars = word.split(" ")

    # Map each Morse code character to its corresponding letter or number
    # and join the resulting array into a single string
    chars.map { |char| MORSE_CODE[char] }.join
  end.join(" ")
end

# Test the method with a few examples
puts decode_morse(".-   -...   -.-.   -..   .")
# Output: "A B C D E"

puts decode_morse(".---   ...--   -....   ---..   ----.")
# Output: "J 3 6 8 9"

puts decode_morse(".... . .-.. .-.. ---   .-- --- .-. .-.. -..")

  
