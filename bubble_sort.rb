require 'pry'
def bubble_sort(array)
  array.each.with_index do |value, index|
    if array[index+1] != nil && array[index]>array[index+1]
      
      array.insert(index, array[index+1])
      array.delete_at(index+2)
    end
  end
  i=0
  sorted=[]
  while i<array.length
    if array[i+1] != nil && array[i]>array[i+1]
      sorted.push(false)
    else 
      sorted.push(true)
    end
    i+=1
  end
  if sorted.any?(false)
    bubble_sort(array)
  else
    p array
  end
end

bubble_sort([4,3,78,2,0,2])