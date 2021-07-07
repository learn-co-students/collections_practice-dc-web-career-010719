require 'pry'

def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort! { |a,b| b <=> a}
end

def sort_array_char_count(array)
  array.sort! {|a,b| a.length <=> b.length}
end

def swap_elements(array)
  array[1], array[2] = array[0], array[2], array[1]
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array.each do |i|
    i.slice!(2)
    i.insert(2,"$")
    end
    # binding.pry
end

def find_a(array)
  array.select do |word|
    word.start_with?("a")
    end
  end

  def sum_array(array)
    array.inject{|sum,e| sum += e}
  end

  def add_s(array)
    new_array = []
    array.each do |word|
      new_array.push(word +"s")
    end
    new_array[1].slice!(-1)
    new_array
  end
