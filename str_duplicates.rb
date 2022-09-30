str1 = "ababcbd"

def str_duplicates(string)
  agg = []
  str = string.split('')
  str.each_with_index do |char, index|
  	if str[index + 1..-1].include?(char) && !agg.include?(char)
    	agg.push(char)
      print char  
    end
  end
end

str_duplicates(str1) # output: ab
