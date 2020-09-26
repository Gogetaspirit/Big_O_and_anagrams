# def anagram?(str1, str2)
#     ("a".."z").all? {|char| str1.count(char) == str2.count(char) } 
# end
# elvis. silve, ilsve, lives 
# def anagram?(str1, str2) 
#      str1.split("").permutation.to_a.join("").include?(str2)
  
# end 

# p anagram?("gizmo", "sally")    #=> false
# p anagram?("elvis", "lives")    #=> true


def second_anagram?(str1, str2) 
    # return true if str2.empty? 

    # search_item = str2[0]  
    # index = str1.index(search_item)
    # return false if index.nil? 
    # second_anagram?(str1[index + 1..-1], str2[1..-1]) 

    arr1 = str1.split("") #O(n)
    arr2 = str2.split("") #O(n)

    arr1.each_with_index do |char, i| #O(n)
         idx = arr2.find_index(char)  #O(n)
         arr2.delete_at(idx) if !idx.nil? #O(n) 
    end 
    arr2.empty? #O(1)
end 


# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true
# p second_anagram?("abcdefghijk", "kjihgfedcba") 


# def third_anagram?(str1, str2)
#     str1.split("").sort == str2.split("").sort #n log n
# end 

def fourth_anagram?(str1, str2) 
    hash = Hash.new(0) #O(1)
    str1.each_char {|char| hash[char] += 1} #O(n)
    hash2 = Hash.new(0) #O(1)
    str2.each_char {|char| hash[char] += 1} #O(n)
     hash == hash2 #O(n)

end # 1 + (1 * n) + 1 + (1 * n) + n => 2 + 3n => O(n) 

p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true
p second_anagram?("abcdefghijk", "kjihgfedcba") #=> true 