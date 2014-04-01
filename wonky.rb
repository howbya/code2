# wonky.rb
#require 'debugger'
def wonky_coins(num)
#debugger 
   if num != 0
      return insert_coin(num,2) + insert_coin(num,3) + insert_coin(num,4)
   else 
      return 1
   end    
end      

def insert_coin(num,divider)
   num = num/divider
   (num == 0) ? (return 1):(wonky_coins(num))
end   

if __FILE__ == $PROGRAM_NAME
   (0..100).each do |num|
      count = 0
      count = wonky_coins(num)
      puts "#{count} is result for #{num}"
   end

end
