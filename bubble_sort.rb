def bubble_sort(array)
  for elements in array
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

def bubble_sort_by(array)
  array.size.times do
    i=0
    until array[i] == array[-1]
      if yield(array[i],array[i+1]) > 0
        array[i],array[i+1]=array[i+1],array[i]
        i+=1
      else
        i+=1
      end
    end
  end
  p array
end

bubble_sort_by(["hi","american football","hello","hey","basketball","soccer","how"]) do |left,right|
   left.length - right.length
   end
