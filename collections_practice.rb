def sort_array_asc(array)
  #sorts an array in ascending order
  array.sort
end



def sort_array_desc(array)
  #sorts an array in descending order
  array.sort { |x, y| y <=> x }
end



def sort_array_char_count(array)
  #sorts an array of strings in ascending order of word length
  array.sort_by { |word| word.size }
end



def swap_elements(array)
  #switches the 2nd and 3rd elements of an array
  second = array[1]
  third = array[2]
  array[1] = third
  array[2] = second
  array
end

def swap_elements_from_to(array, index1, index2)
  #switches any two elements of an array
  x = array[index1]
  y = array[index2]
  array[index1] = y
  array[index2] = x
  array
end



def reverse_array(array)
  #reverses an array
  array.reverse
end



def kesha_maker(array)
  #replaces 3rd letter of each string in an array with $ (unless the word
  #has fewer than 3 letters)
  new_array = []
  array.each do |word|
    if word.size >= 3
      word[2]="$"
      new_array << word
    else
      new_array << word
    end
  end
end



def find_a(array)
  #returns all elements in an array of strings that start with a
  array.select { |word| word.start_with?("a") || word.start_with?("A")}
end



def sum_array(array)
  #adds together all elements of an array of integers
  sum = 0
  array.each { |num| sum = sum + num }
  sum
end

# advanced: use .inject

def sum_with_reduce(array)
  array.reduce(:+)
end

def sum_with_inject(array)
  array.inject { |sum, number| sum + number }
end



def add_s(array)
  #adds the letter s to the end of each string in an array, except the 2nd
  array.map { |word|
    if word != array[1]
      word = word + "s"
    else
      word
    end
  }
end

# using each_with_index as well as collect/map:

def add_s_alternate(array)
  array.each_with_index.map do |word, index|
    if index != 1
      word = word + "s"
    else
      word
    end
  end
end
