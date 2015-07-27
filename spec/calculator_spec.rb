# Your code here
require 'calculator'

describe Calculator do
   
   before(:each) do
       puts "each test starts..."
   end
   
   describe "#add" do
       
       it 'positive add function' do
           expect(Calculator.new(true).add(1,2)).to eq("3")
       end
       
       it 'negative add function' do
           expect(Calculator.new(true).add(-1,-2)).to eq("-3")
       end
       
   end
   
  describe '#subtract' do
      
        it 'subtracts the second argument from the first' do
          expect(Calculator.new(true).subtract(4,1)).to eq("3")
        end
    
        it 'properly handles negative numbers' do
          expect(Calculator.new(true).subtract(4,-2)).to eq("6")
        end
    
  end
  
  describe "#multiply" do
      
        it 'subtracts the second argument from the first' do
          expect(Calculator.new(true).multiply(4,1)).to eq("4")
        end
    
        it 'properly handles negative numbers' do
          expect(Calculator.new(true).multiply(4,-2)).to eq("-8")
        end 
  end
  
  describe "divide" do
      
        it "raise an error will do" do
           expect{Calculator.new(true).divide(1,0)}.to raise_error(ArgumentError) 
        end
        
        it "right output" do
           expect(Calculator.new(true).divide(2,3)).to eq("0.6666666666666666") 
        end
  end
  
  describe "pow" do
      
        it "float pow" do
            expect(Calculator.new(true).pow(26,1/3.0)).to eq("3.0")
        end
        
        it "int pow" do
            expect(Calculator.new(true).pow(3,3)).to eq("27.0")
        end
  end
  
  describe "sqrt" do
      
        it "raise an error will do" do
           expect{Calculator.new(true).sqrt(-1)}.to raise_error(ArgumentError) 
        end
        
        it "float sqrt" do
            expect(Calculator.new(true).sqrt(8)).to eq("2.83")
        end
        
        it "int sqrt" do
            expect(Calculator.new(true).sqrt(9)).to eq("3")
        end
  end
  
  describe "memory" do
        
        it "memory only" do
            expect(Calculator.new(true).memory).to eq(nil)
        end
        
        it "memory with input" do
            mem = Calculator.new(true)
            expect(mem.memory=("8")).to eq("8")
            expect(mem.memory).to eq("8")
            expect(mem.memory).to eq(nil)
        end
        
  end
  
  describe "stringify" do
         it "example verify" do
            c1 = Calculator.new(true)
            expect(c1.add(1,2)).to eq("3")
         end
  end
       
end