
def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort.reverse
end

def sort_array_char_count(array)
  array.sort_by {|el| el.length}
end

def swap_elements(array)
  array[1], array[2] = array[2], array[1]
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array.each do |el|
    el[2] = '$'
  end
end

def find_a(array)
  array.select {|el| el.start_with?('a')}
end

def sum_array(array)
  array.inject{ |total, el| total + el}
end

def add_s(array)
  for i in 0..array.size - 1
    if i != 1
      array[i] += 's'
    end
  end
  array
end
