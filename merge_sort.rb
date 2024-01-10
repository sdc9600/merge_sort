require 'pry-byebug'
array = [3, 2, 1, 13, 8, 5, 0, 1]

def merge_sort(array, start = 0, mid = (array.length / 2) - 1.floor, final = array.length - 1)
  if array.length > 1
    left_array = merge_sort(array[start..mid])
    right_array = merge_sort(array[mid + 1..final])
    merge(left_array, right_array)
  else
    array
  end
end

def merge(left_array, right_array)
  i = 0
  j = 0
  array = []
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
  array
end

p merge_sort(array)