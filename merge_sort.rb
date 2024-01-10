require 'pry-byebug'
array = [3, 2, 1, 13, 8, 5, 0, 1]
array_copy = array

def merge_sort(array, array_copy = array, start = 0, mid = (array.length / 2) - 1.floor, final = array.length - 1)
  #binding.pry
  if array.length > 1
   # binding.pry
    left_array = array_copy[start..mid]
    right_array = array_copy[mid + 1..final]
    merge_sort(left_array)
    merge_sort(right_array)
    merge(left_array, right_array)
    p array_copy
  end
end

def merge(array = [], left_array, right_array)
  i = 0
  j = 0
  until array.length == left_array.length + right_array.length do
    if left_array[i] == nil
      array.append(right_array[j..right_array.length - 1]).flatten!
    elsif right_array[j] == nil
      array.append(left_array[i..left_array.length - 1]).flatten!
    elsif left_array[i] <= right_array[j]
      array.append(left_array[i])
      i += 1
    elsif left_array[i] > right_array[j]
      array.append(right_array[j])
      j += 1
    end
  end
  p array
  return array
end

merge_sort(array)