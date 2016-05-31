module Enumerable
  def my_each
    i=0
    self.size.times do
      yield(self[i])
      i+=1
    end
  end
  def my_each_with_index
    i=0
    self.size.times do
      yield(self[i],i)
      i+=1
    end
  end
  def my_select

    self.my_each do |x|
      

    end
  end

end
