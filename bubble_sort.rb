def bubble_sort(array)
  for element in array
      array.each_with_index do |number,i|
          c = number <=> array[i+1]
          if c == 1
            array[i],array[i+1]=array[i+1],array[i]
          end
        end
      end
  p array
end
bubble_sort([2,1,5,8,3,6,46,23,4])
bubble_sort([4,109,3,78,2,0,2])
