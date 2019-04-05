class RPS

  def initialize
   @options = pick_action
  end

  def pick_action
    options = ["rock", "scissors", "paper"].sample
  end

  attr_reader :options
end
