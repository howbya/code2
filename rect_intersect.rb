#rect_intersect.rb
#require 'debugger'
def rect_int(rect1,rect2)
#debugger
#find x
	new_rect = {x1:-1,y1:-1,x2:-1,y2:-1}
	new_rect[:x1] = find_left(rect1[:x1],rect2[:x1])
	new_rect[:y1] = find_left(rect1[:y1],rect2[:y1])
	new_rect[:x2] = find_right(rect1[:x2],rect2[:x2])
	new_rect[:y2] = find_right(rect1[:y2],rect2[:y2])
	if new_rect[:x1]>new_rect[:x2] or new_rect[:y1]>new_rect[:y2]
		new_rect = nil
	end	
	new_rect
end

def find_left(coord1,coord2)
	(coord1 > coord2) ? (coord1):(coord2)
end	

def find_right(coord1,coord2)
#debugger
	(coord1 < coord2) ? (coord1):(coord2)
end	

r_1 = {x1:0,y1:0,x2:2,y2:1}  
r_2 = {x1:1,y1:0,x2:3,y2:1}  
r_3 = {x1:1,y1:1,x2:2,y2:2}  
r_4 = {x1:0,y1:0,x2:5,y2:5}  
r_5 = {x1:1,y1:1,x2:2,y2:2}  
r_6 = {x1:4,y1:4,x2:5,y2:5}  
r_7 = {x1:1,y1:1,x2:5,y2:4}  
r_8 = {x1:2,y1:2,x2:3,y2:4}  
 
r_9 = {x1:0,y1:0,x2:2,y2:2}  
r_a = {x1:3,y1:0,x2:5,y2:5}  
r_b = {x1:0,y1:0,x2:5,y2:4}  
r_c = {x1:0,y1:6,x2:4,y2:8}  


r_int = rect_int(r_1,r_2)
p r_int
r_int = rect_int(r_3,r_4)
p r_int
r_int = rect_int(r_5,r_6)
p r_int
r_int = rect_int(r_7,r_8)
p r_int
