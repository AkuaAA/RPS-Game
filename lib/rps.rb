class RPS

  def initialize
    @option = pick_action
  end

  def pick_action
   ["rock", "scissors", "paper"].sample
  end

  attr_reader :option
end
