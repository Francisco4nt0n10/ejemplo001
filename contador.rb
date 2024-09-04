class WordCounter
    attr_accessor :text
  
    def initialize(text)
      @text = text
    end
  
    def count_words
      word_count = Hash.new(0)
  
      words = @text.downcase.gsub(/[^a-z\s]/, '').split
  
      words.each do |word|
        word_count[word] += 1  
      end
  
      word_count
    end
    
    def update_text(new_text)
      @text = new_text
    end
  
  end
  
  puts "Por favor, introduce una cadena de texto:"
    user_input = gets.chomp
  counter = WordCounter.new(user_input)
  result = counter.count_words
  puts "Conteo de palabras inicial:"
  result.each do |word, count|
  puts "#{word} #{count}"
end

  puts "Por favor, introduce una nueva cadena de texto para actualizar:"
  newinput = gets.chomp
  counter.update_text(newinput)

  newResult = counter.count_words
  puts "Nuevo conteo de palabras después de la actualización:"
  newResult.each do |word, count|
  puts "#{word} #{count}"
end
