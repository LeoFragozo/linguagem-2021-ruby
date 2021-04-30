def missChar(phrase)
  list = [false] * 26
  letters = ('a'..'z').to_a

  phrase = phrase.downcase.split('')

  phrase.each do |chars|
    next if letters == ' '

    letter_index = letters.find_index(chars)
    list[letter_index] = true if letter_index
  end

  list.include?(false)
end

phrase = 'The five boxing wizards jump quickly'

puts missChar(phrase) ? 'Essa frase não é um pangrama' : 'Essa frase é um pangrama'
