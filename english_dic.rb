class EnglishDic
  attr_accessor :lines

  def initialize(dic_path)
   self.lines = File.readlines(dic_path, chomp: true)
  end

end  