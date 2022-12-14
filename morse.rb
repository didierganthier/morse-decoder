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

  
