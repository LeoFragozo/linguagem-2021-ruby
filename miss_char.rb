def missChar(phrase)
  
  list = [false] * 26
  letters = ('a'..'z').to_a
  
  phrase = phrase.downcase.split('')

  phrase.each do |chars|
    next if letters == ' '

    letter_index = letters.find_index(chars)
    if letter_index
      list[letter_index] = true 
    end
  end

  list.include?(false)
end

phrase = 'The five boxing wizards jump quickly'

puts missChar(phrase) ? 'Essa frase não é um pangrama' : 'Essa frase é um pangrama'
