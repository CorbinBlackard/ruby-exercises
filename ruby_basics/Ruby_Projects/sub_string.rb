def substrings(word, substr_arr)
  result = Hash.new(0)
  word = word.downcase

  substr_arr.each do |item|
    matches = word.scan(item)
    count = matches.length
    if count > 0
      result[item] = count
    end
  end
  result
end