def all_words_capitalized?(arr)
    arr.all? { |word| word == word.capitalize }
end

def no_valid_url?(urls)
    endings = ['.com', '.net', '.io', '.org']
  urls.none? do |url|
    endings.any? { |ending| url.end_with?(ending) }
  end
end

def average(arr)
    sum = arr.sum
    avg = sum / 2.0
    avg
end

def any_passing_students?(students)
    students.any? do |student|
        average(student[:grades]) >= 75
    end
end