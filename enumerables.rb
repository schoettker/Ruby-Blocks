module Enumerable
  def my_each
    i=0
    while i < self.size
      yield(self[i])
      i+=1
    end
    self
  end
  def my_each_with_index
    i=0
    while i < self.size
      yield(self[i],[i])
      i+=1
    end
    self
  end
  def my_select
    new_array = []
    self.my_each {|i| new_array << i if yield(i)}
    new_array
  end
  def my_all?
    x=0
     self.my_each do |i|
       if yield(i) == true
         x+=1
       end
     end
     if x==self.size
      true
    end
  end
  def my_any?
    x=0
    self.my_each do |i|
      if yield(i)==true
        x+=1
      end
    end
    true unless x==0
  end
end
p ["hih","Joghj","dhjg","sd"].my_any? {|k| k.size == 2 }
#p ["hi","Jo","dddf"].my_select {|k| k.size == 2 }
#p ["hi","Jo"].my_each {|k| p k}
# ["hi","Jo"].each {|k| p k}
##["hi","Jo"].each {|k| p k}
