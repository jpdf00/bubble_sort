def bubble_sort(array)
  loop do
    i = 0
    change = false
    until i == array.length - 1
      if array[i] > array[i+1]
        a = array[i+1]
        array[i+1] = array[i]
        array[i] = a
        change  = true
      end
      i += 1
    end
    unless change
      break
    end
  end
  p array
end

bubble_sort([4,3,78,2,0,2])
