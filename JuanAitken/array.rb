def count(list, &block)
  @list=list
  @block = block
  @list.count {list}
end
list = [0,1,2,3,5,8,13]
puts (count(list,){|item| item == 13})