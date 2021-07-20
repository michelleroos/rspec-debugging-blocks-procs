require "byebug"

def hipsterfy (word)
    vowels = "aeiou"
# iterate over string from end
# check if current character is in vowels
# if yes create two variables for word before i and word after i, return before and after word
# return original word
i = word.length - 1
    while i >= 0
        char = word[i]
       if vowels.include?(char)
            before = word[0...i] 
            after = word[i+1..-1]
            new_word = before + after
            return new_word
       end
        i -= 1

    end
    word 
end

def vowel_counts (str)
    hash = Hash.new(0)
    vowels = "aeiouAEIOU"
    str.each_char do |char|
        if vowels.include?(char)
            hash[char.downcase] += 1
        end
    end

    return hash
end

def caesar_cipher(string, n)
# create a variable for alpha
# create a new variable for coded message
# iterate over string, if current iteration is included in alpha:
# create a variable for current index and new index
# add new letter to coded message
# else add original character to coded message 
alpha = ("a".."z").to_a
coded_message = ""
i = 0
while i < string.length
    char = string[i] # "1"
    if alpha.include?(char)
        current_idx = alpha.index(char) # Nil
        new_idx = current_idx + n # nil error
        new_char = alpha[new_idx % 26]
        coded_message += new_char
    else
        coded_message += char
    end
    i += 1
end
coded_message 

end

# p caesar_cipher("boot", 1)
# p caesar_cipher("zebra", 1)

# p caesar_cipher("123 _-!?@%", 3)