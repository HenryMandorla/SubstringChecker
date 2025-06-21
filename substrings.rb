def substrings(string, substring)
  #check if substring is an array
    if substring.is_a?(Array) == false
        return "Library of substrings must be an array"
    end
  #remove case sensitive
    string = string.downcase()
  #split the string into array of chars
    final_hash = {}
  #loop through the substring array and check the main string if there is a match
    substring.each do |item|
      item = item.downcase()
      if string.include?(item)
        total_count = string.scan(item).length
        final_hash[item] = total_count
      end
    end
  return final_hash
end