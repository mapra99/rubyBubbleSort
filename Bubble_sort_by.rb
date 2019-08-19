def bubble_sort_by(arr)
    @j = arr.length-1
    while @j > 0
    @i = 0
    while @i < @j
       left = arr[@i]
       right = arr[@i+1]
     value = yield(left,right)
       if value > 0
         @storage = left
         arr[@i] = right
         arr[@i+1] = @storage
       end
       @i+=1
     end
     @j-=1 
    end
     return arr
   end



bubble_sort_by(["hi","truck","hey","certified"]) do |left,right|
   left.length - right.length
   end