class Dice
  
  def initialize
    @previous_results = []
  end 

  def roll(number_of_dice = 1 ) 
    results = []
    number_of_dice.times do      
      results << rand(1..6)      
    end
    @previous_results << results
    results 
  end 

  def results
    @previous_results
  end

  def score
    sum = 0
    @previous_results.each do |result|
      sum += result.sum      
    end
    sum
  end 

end 