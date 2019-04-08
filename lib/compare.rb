class Compare

  def initialize(contender, opponent)
    @contender = contender
    @opponent = opponent
  end

  def winner?
    if @contender == @opponent
      puts "It's a draw"
    elsif @contender == "rock" &&@opponent == "scissors"
      puts "Rock beats scissors - Atta pal you won!"
    elsif @contender == "scissors" &&@opponent == "paper"
      puts "Scissors beats paper - You won!.You are on fire!"
    elsif @contender == "paper"&&@opponent == "rock"
      puts "Paper beats rock - You won! On a roll!"
    else
      "Better luck next time!"
    end
  end

  attr_reader :contender, :opponent
end
