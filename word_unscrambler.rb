#require 'debugger'
def word_unscrambler(string, dict)
#debugger
	string_as_arr = string.split(//)
	new_words = []
	dict.each do |word|
		word_as_arr = word.split(//)
		if word_as_arr.sort == string_as_arr.sort
			new_words << word
		end
	end		
	return new_words

end

new_words = word_unscrambler("cat", ["tac"]) #should == ["tac"]
p new_words

new_words = word_unscrambler("cat", ["tom"]) #should == []
p new_words

new_words = word_unscrambler("cat", ["tic", "toc", "tac", "toe"]) #should == ["tac"]
p new_words

new_words = word_unscrambler("cat", ["scatter", "tac", "ca"]) #should == ["tac"]
p new_words

new_words = word_unscrambler("turn", ["numb", "turn", "runt", "nurt"]) #should == ["turn", "runt", "nurt"]
p new_words
