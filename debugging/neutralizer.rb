# neutralizer.rb

def neutralize(sentence)
  words = sentence.split(' ')
  good_words = []

  words.each do |word|
    good_words << word unless negative?(word)
  end

  good_words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.