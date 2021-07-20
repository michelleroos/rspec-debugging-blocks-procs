def select_even_nums(arr)
    arr.select(&:even?)
end

def reject_puppies(arr)
    arr.reject { |puppy| puppy["age"] <= 2 }
end

def count_positive_subarrays(arr)
    arr.count { |ele| ele.sum > 0 }
end

def aba_translate(string)
    vowels = "aeiouAEIOU"
    new_str = ""
    string.each_char do |char|
        if vowels.include?(char)
            new_str += char
            new_str += "b"
            new_str += char
        else
            new_str += char
        end
    end
    new_str
end

def aba_array(arr)
    arr.map { |word| aba_translate(word) }
end