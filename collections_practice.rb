require 'pry'
def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort {|x,y| y <=> x}
end

def sort_array_char_count(array)
  array.sort_by {|string| string.length}
end

def swap_elements(array)
  array[1], array[2] = array[2], array[1]
  array
end

def reverse_array(array)
  array.reverse!
end

def kesha_maker(array)
  array.map {|element|
   element[0..1]+'$'+element[3..-1]
 }
end

def find_a (array)
  array.select {|string|
  if string.start_with?('a')
    string
  end
}
end

def sum_array (array)
array.inject(0) {|x,y| x+y}
end

def add_s (array)
array.each_with_index.collect{|element, index|
if index != 1
  element = element + 's'
else element
end
}
end
