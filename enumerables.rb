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
    true unless self.my_each {|i| yield(i) == false}
  end
end
["hi","Jo"].my_all? {|k| k.size == 2 }
#p ["hi","Jo","dddf"].my_select {|k| k.size == 2 }
#p ["hi","Jo"].my_each {|k| p k}
# ["hi","Jo"].each {|k| p k}
##["hi","Jo"].each {|k| p k}
