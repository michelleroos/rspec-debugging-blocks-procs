def reverser(str, &prc)
    return prc.call(str.reverse)
end

def word_changer(sentence, &prc)
    words = sentence.split
    new_sen = []
    words.each { |word| new_sen << prc.call(word) }
    new_sen.join(" ")
end

def greater_proc_value(num, prc1, prc2)
    if prc1.call(num) > prc2.call(num)
        return prc1.call(num)
    else
        prc2.call(num)
    end
end

def and_selector(arr, prc1, prc2)
    new_arr = []
    arr.each { |ele| new_arr << ele if prc1.call(ele) && prc2.call(ele) }
    new_arr
end

def alternating_mapper(arr, prc1, prc2)
    new_arr = []
    arr.each_with_index do |ele, idx|
        if idx.even?
            new_arr << prc1.call(ele)
        else
            new_arr << prc2.call(ele)
        end
    end
    new_arr
end