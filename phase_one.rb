#Phase 1 -------------------
def my_min(array)
    array.each_with_index do |ele, i| #O(n)
        min = ele #O(1)
        array.each_with_index do |ele2, i2| #O(n)
            if i2 > i && min > ele2 #O(1)   
                min = ele2  #O(1)
            end 
        end
    end 
    min #O(1)
end  #(2 * n) * (1 * n) => 2n * 1n => n^2 



#Phase 2 -------------------
def my_min(array) 
    min = array.first # O(1)
    array.each do |ele| #O(n)
        if ele < min  #O(1)
            min = ele  #O(1)
        end
    end
    min #O(1) 
end

# p my_min([0,3,5,4,-5,10,1,90]) 
#Time complexity would be O(n)


def largest_con_sub_sum(arr)
    subs = [] #O(1)
    arr.each_with_index do |ele, idx| #O(n)
        (idx..arr.length-1).each do |idx2| #O(n)
            subs << arr[idx..idx2] #O(n) 
        end 
    end 

    subs.map {|sub| sub.sum }.max #O(n) 
    ##O(n*n*n) + #O(n) = n^3 + n =2n^3 =>2n^3=> n^3 polinomial 
end 

def largest_con_sub_sum(arr)

    accum = arr.first 
    largest = arr.first 

    (1..arr.length-1).each do |idx|

    accum = 0 if accum < 0
    accum += arr[idx]  
    largest = accum if accum > largest  
    end
    largest  
end 

p largest_con_sub_sum([5,3,-7]) #8 [[5],[5,3],[]]
p largest_con_sub_sum([2, 3, -6, 7, -6, 7])  #8
p largest_con_sub_sum([-5, -1, -3]) #-1


