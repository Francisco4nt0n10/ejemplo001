def to_uppercase(str)
    str.upcase
  end
  
  def first_word(str)
    str.split.first
  end
  
  def reverse_string(str)
    str.reverse
  end
  
  input_string = "hola mundo desde ruby"
  
  puts "Original: #{input_string}"
  puts "Mayúsculas: #{to_uppercase(input_string)}"
  puts "Primera palabra: #{first_word(input_string)}"
  puts "Invertido: #{reverse_string(input_string)}"