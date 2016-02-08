require 'spec_helper'

describe RbTxt2HTML do
    
  describe 'Parameters of the gem' do
      
    it 'has a version number' do
      expect(RbTxt2HTML::VERSION).not_to be nil
    end
    
  end
  
  describe RbTxt2HTML do
     
    it 'processes text lines correctly' do
      RbTxt2HTML::convert('texto.txt') 
      arr = RbTxt2HTML::process_lines
      expect(arr).to eq(['<p>Linha sem qualquer tag.</p>','<h1>Título 1</h1>','<h2>Título 2</h2>','<h3>Título 3</h3>','<h4>Título 4</h4>','<h5>Título 5</h5>','<h6>Título 6</h6>'])
    end
    
  end
  
  describe RbTxt2HTML::Base do
      
    it 'the class exists' do
      expect(RbTxt2HTML::Base).not_to be nil
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
      expect(v).to eq(['Linha sem qualquer tag.','%T1% Título 1','%T2% Título 2','%T3% Título 3','%T4% Título 4','%T5% Título 5','%T6% Título 6'])
    end

  end
  
  describe RbTxt2HTML::Writer do
      
    it 'the class exists' do
      expect(RbTxt2HTML::Writer).not_to be nil
    end  
    
    it 'should raise an ArgumentError (Invalid file name) if initialization parameter fname is not a String' do
      expect {
        c = RbTxt2HTML::Writer.new(2,[])
      }.to raise_error(ArgumentError, 'Invalid file name.')
    end
    
    it 'should raise an IOError (File already exists) if initialization parameter fname is the name of an existing file' do
      expect {
        c = RbTxt2HTML::Writer.new('/home/edvaldo/texto.txt',[])
      }.to raise_error(IOError, 'File already exists.') 
    end  
    
    it 'should raise an ArgumentError (Invalid file name) if initialization parameter lines is not an Array' do
      expect {
        c = RbTxt2HTML::Writer.new('/home/edvaldo/texto2.txt',2)
      }.to raise_error(ArgumentError, 'Parameter is NOT an array.')
    end   
    
    it 'should raise an ArgumentError (Invalid file name) if initialization parameter lines is an empty Array' do
      expect {
        c = RbTxt2HTML::Writer.new('/home/edvaldo/texto2.txt',[])
      }.to raise_error(ArgumentError, 'Lines array is empty.')
    end
    
    it 'should write the file' do
      File.delete('/home/edvaldo/texto.txt.html')
      c = RbTxt2HTML::Writer.new('/home/edvaldo/texto.txt.html',['<p>Linha sem qualquer tag.</p>','<h1>Título 1</h1>','<h2>Título 2</h2>','<h3>Título 3</h3>','<h4>Título 4</h4>','<h5>Título 5</h5>','<h6>Título 6</h6>'])
      c.write_file
      ff = File.exist?('/home/edvaldo/texto.txt.html')
      expect(ff).to be true
    end
    
  end
  
end
