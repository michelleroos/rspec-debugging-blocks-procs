def average(num_1, num_2)
    sum = num_1 + num_2
    avg = sum / 2.0
    avg
end

def average_array(arr)
    sum = 0.0
    arr.each { |num|sum += num }
    avg = sum/arr.length
    avg
end

def repeat(str, num)
    str*num
end

def yell(string)
    string.upcase + "!"
end

def alternating_case(sentence)

    new_sentence = []

    sentence.split.each_with_index do |word, i|
        if i % 2 == 0
            new_sentence << word.upcase
        else
            new_sentence << word.downcase
        end
    end

    return new_sentence.join(" ")
end