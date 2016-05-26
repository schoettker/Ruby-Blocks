def bubble_sort(array)
  i=1

  array.each do |number|
    c=number<=>array[i]

    if c == -1 #erste zahl kleiner als zweite
      i+=1
    elsif c == 0 #zahhlen gleich
      i+=1
    elsif c == 1 #erste zahl größer als zweite
      array[i-1]=array[i]
      array[i] = number
      i+=1


    end

  end

  p array
end

bubble_sort([4,109,3,78,2,0,2])
