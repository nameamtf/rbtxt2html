require "rbtxt2html/base"
require "rbtxt2html/reader"
require "rbtxt2html/version"
require "rbtxt2html/writer"


module RbTxt2HTML
    
  @@tags = ['%T1%','%T2%','%T3%','%T4%','%T5%','%T6%']
  @@opens = ['<h1>','<h2>','<h3>','<h4>','<h5>','<h6>']
  @@closes = ['</h1>','</h2>','</h3>','</h4>','</h5>','</h6>']
  
  @lines = nil
    
  def self.convert(fname)
    reader = RbTxt2HTML::Reader.new(fname)
    @newfname = fname + '.html'
    @lines = reader.read_file
    @lines2 = process_lines
    writer = RbTxt2HTML::Writer.new(@newfname,@lines2)
    writer.write_file
  end
  
  def self.process_lines
    arr = []
    @lines.each{ |l|
      has_tag = false
      @@tags.each_index{ |i|
        if l.include? @@tags[i]
          l = process_tag(l,i)
          has_tag = true
        end
      }
      if has_tag
        arr.push(l)
      else
        l = '<p>' + l + '</p>'
        arr.push(l)
      end
    }
    arr
  end
  
  def self.process_tag(l,i)
    tag = @@tags[i]
    ltag = tag.length
    ll  = l.length
    ldiff = ll - ltag
    l = l[ltag,ldiff]
    l = l.strip
    l = @@opens[i] + l + @@closes[i]
  end

end
