module RbTxt2HTML
    
  class Reader < RbTxt2HTML::Base
    
    def initialize(fname)
      if is_string?(fname) and is_file?(fname) and has_contents?(fname)
        @filename = fname
      end
    end
    
    def read_file
      a = []
      File.readlines(@filename).each do |line|
        a.push(line.gsub(/\n/, ""))
      end
      a
    end
    
  end
  
end
