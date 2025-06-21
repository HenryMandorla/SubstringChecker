def substrings(string, substring)
    if substring.is_a? == false
        return "Library of substrings must be an array"
    end
    string_array = string.split("")
    substring_array = substring.split("")
    if string_array.each_cons(substring_array.length).include?(substring_array)
        return true
    end
        return false
end