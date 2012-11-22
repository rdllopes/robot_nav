require './compass'

describe Compass do
  let(:compass) {Compass.new(:N)}

  it "deveira apontar para o norte" do
    compass.pos().should == :N
  end

  it "movimento horario" do
    compass.right()
    compass.pos().should == :E
    compass.right()
    compass.pos().should == :S
    compass.right()
    compass.pos().should == :W
    compass.right()
    compass.pos().should == :N
  end

  it "movimento anti-horario" do
    compass.left()
    compass.pos().should == :W
    compass.left()
    compass.pos().should == :S
    compass.left()
    compass.pos().should == :E
    compass.left()
    compass.pos().should == :N
  end
  
end