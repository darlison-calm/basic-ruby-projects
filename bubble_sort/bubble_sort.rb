def bubble_sort1(list)
   length = list.length
  
   for i in  0..length
    for j in i+1..length - 1
      if list[i] > list[j]
        temp = list[i]
        list[i] = list[j]
        list[j] = temp
      end
    end  
  end
  list
 end  

 def bubble_sort2(list)
  length = list.length
  loop do 
    swapped = false
    (length-1).times do |i|
      if list[i] > list[i+1]
        list[i], list[i+1] = list[i+1], list[i]
        swapped = true
      end 
    end     
    break unless swapped
  end
  list
end
p bubble_sort2([4,3,78,2,0,2])
