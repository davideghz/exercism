class Bob
  def hey(text)
    return 'Whoa, chill out!' if text.scan(/[a-zA-Z]/).join == text.scan(/[a-zA-Z]/).join.upcase && text.scan(/[a-zA-Z]/).join != ''
    return 'Sure.' if text.chars.last === '?'
    return 'Fine. Be that way!' if text.strip.empty?
    return 'Whatever.'
  end
end

# I'm really not happy with my first return
