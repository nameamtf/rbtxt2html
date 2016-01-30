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
    
    it 'should raise an ArgumentError (Invalid file name) if initialization parameter is not a String' do
      expect {
        c = RbTxt2HTML::Reader.new(2)
      }.to raise_error(ArgumentError, 'Invalid file name.')
    end
    
    it 'should raise an IOError (File not found) if initialization parameter is not a valid file' do
      expect {
        c = RbTxt2HTML::Reader.new('/home/edvaldo/teste2.txt')
      }.to raise_error(IOError, 'File not found.') 
    end
    
    it 'should raise an IOError (File empty) if the file is empty' do
      expect {
        c = RbTxt2HTML::Reader.new('/home/edvaldo/teste.txt')
      }.to raise_error(IOError,'File empty.')
    end
    
    it 'should read the file' do
      c = RbTxt2HTML::Reader.new('/home/edvaldo/texto.txt')
      v = c.read_file
      expect(v).to eq(['Este é um teste.','De leitura de arquivo.','Da gem rbtxt2html.'])
    end

  end
  
end
