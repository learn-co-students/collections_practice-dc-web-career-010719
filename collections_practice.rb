require "pry"

def sort_array_asc(array)
	#sorts the array from lowest to highest number
	array.sort do |a, b|
		a <=> b
	end
end

def sort_array_desc(array)
	#sorts the array from highest to lowest number
	array.sort do |a, b|
		b <=> a
	end
end

def sort_array_char_count(array)
	#arranges the array by the length of the individual elements
	array.sort do |a, b|
		a.length <=> b.length
	end
end

def swap_elements(array)
	#swaps the second and third array elements
	# array_second = array[1]
	# array_third = array[2]
	# array[1] = array_third
	# array[2] = array_second
	array.insert(2, array.delete_at(1))
	array
end

def reverse_array(array)
	#reverses the order of the array without sorting
	array.map.with_index do |a, index|
		array.insert(0, a)
		array.delete_at(index + 1)
	end
	array
end

def kesha_maker(array)
	#replaced the thir element of each string with a "$" a la Ke$ha
	array.map do |a|
		a[2] = "$"
	end
	array
end

def find_a(array)
	#returns all words that start wth a in a new array
	array.select do |word|
		word.start_with?("a")
	end
end

def sum_array(array)
	#adds all elements of the array together
	array.inject {|sum, a| sum + a}
end	

def add_s(array)
	#used both each_with_index and collect to add "s" to all elements exect the element housed in the second index
	array.each_with_index.collect do |element, index|
		if index != 1
			element + "s"
		else element
		end
	end
end


