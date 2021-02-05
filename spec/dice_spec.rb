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
    expect(subject.roll(2)).to all( be_between(1,6) )
    # expect(subject.roll(2)[0]).to be_between(1, 6) 
    # expect(subject.roll(2)[1]).to be_between(1, 6) 
  end

  it "records previous dice roll" do
    subject = Dice.new
    expected_roll = subject.roll
    expect(subject.results).to eq [expected_roll]
  end

  it "sums up all previous results as current score" do
    subject = Dice.new
    subject.roll #[1-6]
    subject.roll(2) #[1-6, 1-6]
    expect(subject.score).to be_between(3, 18)
  end

end

#expect(subject.roll(10)).to all( be_between(1,6) )        