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
  end
  
  puts "Por favor, introduce una cadena de texto:"
    user_input = gets.chomp
  counter = WordCounter.new(user_input)
  result = counter.count_words
  
  result.each do |word, count|
    puts "#{word} #{count}"
  end
  