#Search method
def search_array(arr, n)
  i = 0
  indices = []

  while i < arr.length
    if arr[i] == n
      indices.push(i)
    end
    i += 1
  end
  if indices.empty?
    return nil
  else
    indices
  end
end

arr = [42, 89, 23, 1, 1]
p search_array(arr, 1)
p search_array(arr, 24)
