# longest_sentence.rb

# PROBLEM
# Input: Content of a text file
# Output: Print longest sentence in the file (based on # of words).
#         Sentences may end with period, explamation mark or question mark.
#         Words can include non-letter characters (just not spaces or
#         sentence-endeing punctuation)
#         Also print the # of words

# EXAMPLES
# Four score and seven years ago our fathers brought forth
# on this continent a new nation, conceived in liberty, and
# dedicated to the proposition that all men are created
# equal.

# Now we are engaged in a great civil war, testing whether
# that nation, or any nation so conceived and so dedicated,
# can long endure. We are met on a great battlefield of that
# war. We have come to dedicate a portion of that field, as
# a final resting place for those who here gave their lives
# that that nation might live. It is altogether fitting and
# proper that we should do this.

# But, in a larger sense, we can not dedicate, we can not
# consecrate, we can not hallow this ground. The brave
# men, living and dead, who struggled here, have
# consecrated it, far above our poor power to add or
# detract. The world will little note, nor long remember
# what we say here, but it can never forget what they
# did here. It is for us the living, rather, to be dedicated
# here to the unfinished work which they who fought
# here have thus far so nobly advanced. It is rather for
# us to be here dedicated to the great task remaining
# before us -- that from these honored dead we take
# increased devotion to that cause for which they gave
# the last full measure of devotion -- that we here highly
# resolve that these dead shall not have died in vain
# -- that this nation, under God, shall have a new birth
# of freedom -- and that government of the people, by
# the people, for the people, shall not perish from the
# earth.

# Output:
# -> The longest sentence in this file is 86 words long.
# -> The longest sentece is:
#   (sentence)

# DATA STRUCTURES
# Array of arrays
#   Each subarray is a sentence

# ALGORITHM
# Read text file into string variable
# Initialize file array with 1 element (an empty array)
# current_index = 0
# For each word in the file:
#   append word to file_array[index]
#   if last character of word is '.', '!' or '?'
#     current_index = current_index + 1
#     file_array[current_index] = []
#
# initialize longest = 0
# longest_sentence = []
# for each element of file_array
#   if length of current inner array > longest
#       longest = length of current inner array
#       longest sentence = current inner array
#
# print output
# return nil

# CODING
SENTENCE_END = ['.', '!', '?']

def longest_sentence(text)
  file_array = [[]]
  current_index = 0

  text.split(' ').each do |word|
    file_array[current_index] << word

    if SENTENCE_END.include?(word[-1])
      current_index += 1
      file_array << []
    end    
  end

  longest_length = 0
  longest_sentence = []

  file_array.each do |sentence|
    current_length = sentence.length

    if current_length > longest_length
      longest_length = current_length
      longest_sentence = sentence
    end
  end

  puts("The longest sentence has #{longest_length} words.\n")
  puts('----------------------------------')
  puts("The sentence is:")
  puts('----------------------------------')
  puts(longest_sentence.join(' '))
end

def longest_word(text)
  words = text.split(/\.|\?|!|,|;/).join('').split(' ')
  words.max_by(&:size)
end

def longest_paragraph(text)
  paragraphs = text.split("\n\n")
  paragraphs.max_by { |paragraph| paragraph.split(/\n|\040/).size }
end
  
gettysburg = File.open('gettysburg.txt')
gettysburg_text = gettysburg.read

longest_sentence(gettysburg_text)

frankenstein = File.open('frankenstein.txt')
frankenstein_text = frankenstein.read

longest_sentence(frankenstein_text)

puts longest_word(gettysburg_text)
puts longest_word(frankenstein_text)



puts longest_paragraph(gettysburg_text)
puts
puts longest_paragraph(frankenstein_text)
