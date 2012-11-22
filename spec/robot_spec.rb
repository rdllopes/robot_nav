require './robot'

describe Robot do
  let(:robot) {
    robot = Robot.new
    robot.create_matrix("10 10")
    robot 
  }

  it "deveira posicionar o robo" do
    robot.position("2 4 N")
    robot.pos_x().should eq(2)
    robot.pos_y().should eq(4)
    robot.head_to().pos().should eq(:N)   
  end

    
  it "deveria realizar uma simulacao" do
    robot.parse_file("teste.txt").should == "2 1 W"
  end

  it "mover para o norte" do
    robot.position("1 1 N")
    robot.move()
    robot.to_s().should == "1 2 N"
  end  

  it "ficar parado ao tentar mover para o norte no limite superior" do
    robot.position("1 10 N")
    robot.move()
    robot.to_s().should == "1 10 N"
  end  

  it "mover para o sul" do
    robot.position("1 1 S")
    robot.move()
    robot.to_s().should == "1 0 S"
  end

  it "ficar parado ao tentar mover para o sul no limite inferior" do
    robot.position("1 0 S")
    robot.move()
    robot.to_s().should == "1 0 S"
  end


  it "mover para o leste" do
    robot.position("1 1 E")
    robot.move()
    robot.to_s().should == "2 1 E"
  end  

  it "ficar parado ao tentar mover para o leste no limite superior" do
    robot.position("10 1 E")
    robot.move()
    robot.to_s().should == "10 1 E"
  end  

  it "mover para o oeste" do
    robot.position("1 1 W")
    robot.move()
    robot.to_s().should == "0 1 W"
  end

  it "ficar parado ao tentar mover para o oeste no limite inferior" do
    robot.position("0 1 W")
    robot.move()
    robot.to_s().should == "0 1 W"
  end
  
end