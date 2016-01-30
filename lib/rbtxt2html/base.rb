module RbTxt2HTML
    
  class Base
      
    def is_string?(fname)
      raise ArgumentError.new('Invalid file name.') unless fname.is_a? String
      true
    end
    
    def is_file?(fname)
      raise IOError.new('File not found.') unless File.exist?(fname)
      true
    end
    
    def is_not_file?(fname)
      raise IOError.new('File already exists.') if File.exist?(fname)
      true
    end    
    
    def has_contents?(fname)
      raise IOError.new('File empty.') if File.zero?(fname)
      true
    end
    
    def is_array?(arr)
      raise ArgumentError.new('Parameter is NOT an array.') unless arr.is_a? Array
      true
    end
    
    def array_not_empty?(arr)
      raise ArgumentError.new('Lines array is empty.') unless arr.length>0
      true
    end
  
  end
  
end