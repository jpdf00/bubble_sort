def bubble_sort_by(array)
  loop do
    i = 0
    change = false
    until i == array.length - 1
      my_block = yield array[i], array[i + 1]
      if my_block > 0
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

bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end
