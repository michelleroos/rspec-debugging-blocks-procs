require "byebug"

# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def largest_prime_factor(num)
    largest_prime = num
    n = num - 1
    while n >= 2
        if (num % n == 0) && (is_prime?(n))
            largest_prime = n
            return largest_prime
        end
        n -= 1
    end
    largest_prime
end

def is_prime?(n)
    
    return false if n < 2
    (2...n).each { |f| return false if n % f == 0 }
    true 

end

def unique_chars?(str)
    hash = Hash.new(0)
    str.each_char { |char| hash[char] += 1 }
    hash.each do |k, v|
        if hash[k] > 1
            return false
        end
    end
    true
end

def dupe_indices(arr)
    hash = Hash.new { |h, k| h[k] = [] }
    i = 0
    while i < arr.length
        ele = arr[i]
        hash[ele] << i
        i += 1
    end

    hash.select { |k, v| v.length > 1 }
end

def ana_array(arr1, arr2)
    hash = Hash.new(0)
    arr1.each do |ele1|
        hash[ele1] += 1
    end
    arr2.each do |ele2|
        hash[ele2] -= 1
    end
    hash.each_value do |v|
        if v != 0
            return false
        end
    end
    true
end