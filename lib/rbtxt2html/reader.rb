module RbTxt2HTML
    
  class Reader
    
    def initialize(fname)
      if is_string?(fname) and is_file?(fname) and has_contents?(fname)
        @filename = fname
      end
    end
    
    def is_string?(fname)
      raise ArgumentError.new('Invalid file name.') unless fname.is_a? String
      true
    end
      
    def is_file?(fname)
      raise IOError.new('File not found.') unless File.exist?(fname)
      true
    end
    
    def has_contents?(fname)
      raise IOError.new('File empty.') if File.zero?(fname)
      true
    end
    
  end
  
end
