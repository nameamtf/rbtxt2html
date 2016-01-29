require "rbtxt2html/version"
require "rbtxt2html/reader"

module RbTxt2HTML

  @reader = nil
    
  def self.convert(fname)
    @reader = RbTxt2HTML::Reader.new(fname)
  end

end
