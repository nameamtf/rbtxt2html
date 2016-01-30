require "rbtxt2html/base"
require "rbtxt2html/reader"
require "rbtxt2html/version"
require "rbtxt2html/writer"


module RbTxt2HTML
    
  @lines = nil
    
  def self.convert(fname)
    reader = RbTxt2HTML::Reader.new(fname)
    @lines = reader.read_file
  end
  
  def self.process
  end

end
