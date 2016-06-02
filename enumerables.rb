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
  def my_none?
    x=0
    self.my_each do |i|
      if yield(i)==true
        x+=1
      end
    end
    true unless x!=0
  end
  def my_map
    new_array = []
    self.my_each do |i|
      new_array << yield(i)
    end
    new_array
  end
  def my_inject

  end

end

=begin
  def my_count(*argument)

    if argument.empty? && !block_given?
      self.length
    elsif block_given?
      a=0
      self.my_each do |element|
      if yield(self[element])
        a+=1
      end
    end
      a
    else
    x=0
    self.my_each do |element|
      if element == argument[0]
        x+=1
      end
    end
    x
    end
  end
end
ary=[2,1,2,3,4,2]
p ary.my_count{|x|x%2==0}
=end
