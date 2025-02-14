#Bubble Sort implementation in Ruby.

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break unless swapped

  end
  array
end

# Example

puts "Enter numbers separated by spaces:"
numbers = gets.chomp.split.map(&:to_i)

sorted_numbers = bubble_sort(numbers)

puts "Sorted numbers: #{sorted_numbers.join(', ')}"
