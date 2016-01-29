require 'spec_helper'

describe RbTxt2HTML do
    
  describe 'Parameters of the gem' do
      
    it 'has a version number' do
      expect(RbTxt2HTML::VERSION).not_to be nil
    end
    
  end
  
  describe RbTxt2HTML::Reader do
    
    it 'the class exists' do
      expect(RbTxt2HTML::Reader).not_to be nil
    end
    
    it 'should receive a string as an initialization parameter' do
      c = RbTxt2HTML::Reader.new("teste")
      expect(c.is_string?).to be true
    end

  end
  
end
