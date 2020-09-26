# def bad_two_sum?(arr, target)
#     arr.each_with_index do |ele, i|
#          arr.each_with_index do |ele2, i2|
#             if ele + ele2 == target && i2 > i  
#                 return true 
#             end 
#         end 
#     end 
#     false 
# end 

def okay_two_sum?(arr, target)
    # arr.sort.bsearch(target)
    # arr.combination(2).any? { |el,el2| return true if el + el2 == target }

    sorted = arr.sort
    (0...sorted.lentgh-1).each do |i|
       if arr[i] + arr[i+1] == target 
            return true 
       end 
    end 
end

arr = [7,1,9,6,2,3,10] #[1,2,3,6,7,9,10]

p okay_two_sum?(arr, 6) 
p okay_two_sum?(arr, 11) 