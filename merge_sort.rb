require 'pry-byebug'
array = [3, 2, 1, 13, 8, 5, 0, 1]

def merge_sort(array, start = 0, mid = (array.length / 2) - 1.floor, final = array.length - 1)
  #binding.pry
  if array.length > 1
    merge_sort(array[start..mid])
    merge_sort(array[mid + 1..final])
  end
  p array
end

merge_sort(array)