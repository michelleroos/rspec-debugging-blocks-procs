def my_map(arr, &prc)
    new_arr = Array.new
    arr.each do |ele|
        new_arr << prc.call(ele)
    end
    new_arr
end

def my_select(arr, &prc)
    new_arr = []
    arr.each do |ele| 
       if prc.call(ele)
         new_arr << ele
       end
    end
    new_arr
end

def my_count(arr, &prc)
    count = 0 
    arr.each { |ele| count += 1 if prc.call(ele) }
    count
end

def my_any?(arr, &prc)
    arr.each { |ele| return true if prc.call(ele) }
    false
end

def my_all?(arr, &prc)
    arr.each do |ele| 
        if !prc.call(ele)
            return false
        end
    end
    true
end

def my_none?(arr, &prc)
    arr.each { |ele| return false if prc.call(ele) }
    true
end
