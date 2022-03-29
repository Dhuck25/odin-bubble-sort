list = [4,5,2,7,9,1,3,6,8]

# Sort an array 2 numbers at a time, working through the array
def bubble_sort(array)
    a_length = array.length
# Loop through the array
    loop do
        # If nothing needs to be moved "swapped" then the loop will only check once and return the array
        return array if a_length <= 1
        swapped = false
        # Go through the array 2 numbers at a time and swap numbers to put them in correct order. Least to Greatest
        (a_length - 1).times do |i|
         if array[i] > array[i+1]
             array[i], array[i+1] = array[i+1], array[i]
             swapped = true
         end
        end
        #Breaking if nothing needs to the swapped
        break if not swapped
    end
    array
end

p bubble_sort(list)