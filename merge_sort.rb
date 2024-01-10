require 'pry-byebug'
array = [3, 2, 1, 13, 8, 5, 0, 1]

def merge_sort(array, start = 0, mid = (array.length / 2) - 1.floor, final = array.length - 1)
  #binding.pry
  if array.length > 1
    merge_sort(array[start..mid])
    merge_sort(array[mid + 1..final])
  end
  merge(array)
end

def merge(array, start = 0, mid = (array.length / 2) - 1.floor, final = array.length - 1)
  i = 0
  j = 0
  array_copy = []
  left_array = array[start..mid]
  right_array = array[mid+1..final]
 # binding.pry
  until array_copy.length == left_array.length + right_array.length do
    if left_array[i] == nil
      array_copy.append(right_array[j..right_array.length - 1]).flatten!
    elsif right_array[j] == nil
      array_copy.append(left_array[i..left_array.length - 1]).flatten!
    elsif left_array[i] <= right_array[j]
      array_copy.append(left_array[i])
      i += 1
    elsif left_array[i] > right_array[j]
      array_copy.append(right_array[j])
      j += 1
    end
  end
  p  "Merged array: #{array_copy}"
end

merge_sort(array)