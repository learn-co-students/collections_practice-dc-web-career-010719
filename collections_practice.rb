require 'pry'

def sort_array_asc(array)
  #takes in an array of integers and returns a copy
  #of the array but with the integers in ascending order
  newar = array.sort
end

def sort_array_desc(array)
  #takes in an array of integers and returns a copy
  #of that array with the integers in descending order
  newar = array.sort.reverse!
end

def sort_array_char_count(array)
  #takes in an array of strings and returns a copy of
  #that array with the strings in ascending order by length
  newar = array.sort_by { |string| string.length}
end

def swap_elements(array)
  #takes in an array and swaps the second and third elements
  array[1], array[2] = array[2], array[1]
  newar = array
end

def reverse_array(array)
  #takes in an array of integers and returns a copy of
  #the array with the elements in reverse order
  newar = array.reverse
end

def kesha_maker(array)
  #takes in an array of strings and replaces the third
  #character in each string with a '$'. use .each
  newar = array.collect do |element|
    element[2] = '$'
    element
  end
end

def find_a(array)
  #returns all the strings in the array that start with the letter 'a'
  newar = []
  array.each do |element|
    if element.start_with?('a')
      newar << element
    end
  end
  newar
end
