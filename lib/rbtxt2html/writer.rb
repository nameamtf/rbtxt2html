module RbTxt2HTML
    
  class Writer < RbTxt2HTML::Base
      
    def initialize(fname,lines)
      if is_string?(fname) and is_not_file?(fname)
        @filename = fname
      end        
      if is_array?(lines) and array_not_empty?(lines)
        @filelines = lines
      end
    end
    
    def write_file
      fh = open(@filename,"w")
      fh.truncate(0)
      fh.write('<meta charset="utf-8" />')
      @filelines.each{ |line|
        fh.write(line.force_encoding('UTF-8'))
      }
      fh.close
    end
      
  end
  
end
