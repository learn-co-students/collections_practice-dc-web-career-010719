def sort_array_asc(array)
  array.sort!
end

def sort_array_desc(array)
  array.sort.reverse!
end

def sort_array_char_count(array)
  sorted_array = array.sort {|x, y| x.size <=> y.size}
end

def swap_elements(array)
  array[1], array[2] = array[2], array[1]
  array
end

# def swap_elements_from_to(array, index, destination_index)
#   array[index], array[destination_index] = array[destination_index], array[index]
#   array
# end

def reverse_array(array)
  array.reverse!
end

def kesha_maker(array)
  array.each do |string|
    string.slice!(2)
    string.insert(2, "$")
  end
  array
end

def find_a(array)
  a_array = []
  array.each do |string|
    if string.start_with?("a")
      a_array << string
    end
  end
  a_array
end

def sum_array(array)
  total = array.inject {|sum, n| sum + n}
end

def add_s(array)
  array.each_with_index.map do |string, index|
    if index == 1
      string
    else
      string << "s"
    end
  end
  array
end
