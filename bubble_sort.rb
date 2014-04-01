#bubble_sort.rb
#require 'debugger'
def bubble_sort(numbers)
#debugger	
	count=numbers.count
	done = false
	while done == false
		done = true
		numbers.each_with_index do |num,i|
			if (i+1)< count and num > numbers[i+1] 
				numbers[i] = numbers [i+1]
				numbers[i+1] = num
				done=false
			end	
		end	
	end	
	numbers
end

nums0 = []
nums1 = [1]
nums2 = [5,4,3,2,1]
nums2 = [4,5,32,6,77,2,4,78,9,1,5,4,3,2,1]
p bubble_sort(nums0)
p bubble_sort(nums1)
p bubble_sort(nums2)
