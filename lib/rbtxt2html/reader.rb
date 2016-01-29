module RbTxt2HTML
    
  class Reader
    
    def initialize(fname)
      @file = fname
      raise ArgmentError.new("Invalid file name.") unless is_string?
    end
    
    def is_string?
      @file.is_a? String
    end
      
  end
  
end
