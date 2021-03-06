def base(alien)
  result = 0
  characters = alien.split('')
  base = [characters.uniq.length, 2].max

  characters.reverse.each_with_index do |char, index|
    if char == characters.first
      result += inteiro_na_base(char * base ** index
    end
  end

  return result
end
