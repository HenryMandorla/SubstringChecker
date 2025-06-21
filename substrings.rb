def substrings(string, substring)
  #check if substring is an array
    if substring.is_a?(Array) == false
        return "Library of substrings must be an array"
    end
  #split the string into array of chars
    string_array = string.split("")
    final_hash = {}
  #loop through the substring array and check the main string if there is a match
    substring.each do |item|
      sub_chars = item.split("")
      if string_array.each_cons(sub_chars.length).include?(sub_chars)
        sub_word = sub_chars.join("")
        total_count = string_array.each_cons(sub_chars.length).count(sub_chars)
        final_hash[sub_word] = total_count
      end
    end
  return final_hash
end