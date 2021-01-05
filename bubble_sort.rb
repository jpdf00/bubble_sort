#require "pry"

def bubble_sort(array)
  i = 0
  count = 1
  until count == 0
    #binding.pry
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

bubble_sort([4,3,78,2,0,2])
