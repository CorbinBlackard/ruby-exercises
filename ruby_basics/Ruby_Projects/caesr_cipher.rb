def caesar_cipher(phrase, shift)
  result = ""
  shift_amount = shift

  phrase.each_char do |x|
    #LOWERCASE
    if x.ord.between?(97, 122)
      to_num = ((x.ord - 97 + shift_amount) % 26) + 97
      to_str = to_num.chr
      result << to_str
    #UPPERCASE
    elsif x.ord.between?(65, 90)
      to_num = ((x.ord - 65 + shift_amount) % 26) + 65
      to_str = to_num.chr
      result << to_str
    else
      result << x
    end
  end
end


caesar_cipher("abc", 1)   # => "bcd"
caesar_cipher("xyz", 3)   # => "abc"  
caesar_cipher("Hello!", 5) # => "Mjqqt!"
caesar_cipher("Zebra", 2)  # => "Bgd tc"? Wait, need to check...