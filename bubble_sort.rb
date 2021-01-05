def bubble_sort(array)
  i = 0
  count = 1
  until count == 0
    count = 0
    i = 0
    until i == array.length - 1
      if array[i] > array[i+1]
        a = array[i+1]
        array[i+1] = array[i]
        array[i] = a
        count +=1
      end
      i += 1
    end
  end
  p array
end

i = 0
def bubble_sort_yield(array)
  count = 1
  until count == 0
    count = 0
    i = 0
    until i == array.length - 1
      temp = bubble_sort_by(array) do |fst, snd|
        fst - snd
      end
      if temp > 1
        a = array[i+1]
        array[i+1] = array[i]
        array[i] = a
        count +=1
      end
    end
      i += 1
  end
  p array
end

def bubble_sort_by(array)
  yield array[i]
  yield array[i+1]
end



# bubble_sort_by([4,3,78,2,0,2])
bubble_sort_yield([4,3,78,2,0,2])
