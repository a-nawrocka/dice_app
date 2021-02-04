require "dice"

describe Dice do

  it "allows user to roll dice" do
    subject = Dice.new
    expect(subject).to respond_to(:roll)
  end

  it "roll should give me a number between 1 and 6" do 
    subject = Dice.new
    expect(subject.roll[0]).to be_between(1, 6)
  end 

  it "allows user to roll any number of dice" do 
    subject = Dice.new
    expect(subject).to respond_to(:roll).with(1).argument  
  end 

  it "given 2 dice roll should give me 2 numbers between 1 and 6" do
    subject = Dice.new
    expect(subject.roll(2)[0]).to be_between(1, 6) 
    expect(subject.roll(2)[1]).to be_between(1, 6) 
  end


end