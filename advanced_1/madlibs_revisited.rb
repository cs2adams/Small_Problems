# madlibs_revisited.rb

# PROBLEM
# Input: A text file with word types flagged.
# Output: Print the text file with word types (noun, adjective, verb, adverb) randomly chosen and inserted

# EXAMPLES
# Text data
# The %{adjective} brown %{noun} %{adverb}
# %{verb} the %{adjective} yellow
# %{noun}, who %{adverb} %{verb} his
# %{noun} and looks around.

# Output
# The sleepy brown cat noisily
# licks the sleepy yellow
# dog, who lazily licks his
# tail and looks around.

# DATA STRUCTURES
# A hash with keys as word types, values as arrays of example words

# ALGORITHM
# Save hash with word types
# Read text file into program
# For each word tpye in hash
#   Sampled = []
#   For each occurrence in input text
#     Sample from hash
#     If not already in sampled_array
#       Add to sampled_array
#       Substitute the text occurrence
# Print substituted text

# CODING
WORDS = { 
  adjective: ['quick', 'lazy', 'sleepy', 'ugly'],
  noun: ['fox', 'dog', 'head', 'leg'],
  verb: ['jumps', 'lifts', 'bites', 'licks'],
  adverb: ['easily', 'lazily', 'noisily', 'excitedly']
}

def madlibs(filename)
  file = File.open(filename)
  text = file.read
  WORDS.each_key do |word_type|
    words_used = []

    text.gsub!("%{#{word_type.to_s}}") do
      next_word = ''
      loop do
        next_word = WORDS[word_type].sample
        unless words_used.include?(next_word)
          words_used << next_word
          break
        end
      end
      next_word
    end
  end
  puts text
end

madlibs('madlibs_text.txt')