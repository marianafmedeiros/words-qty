class EnglishDic
  
  def dic_array 
  lines = Array.new
  File.foreach('./english-words/words_alpha.txt') { |line| list << line }
  end
  
end  
