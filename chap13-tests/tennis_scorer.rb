class TennisScorer

  OPPOSITE_SIDE_OF_NET = { :server => :receiver, :receiver => :server }

  def initialize
    @score = { server: 0, receiver: 0 }
  end

  def score
    sc_re = @score[:receiver]
    sc_se = @score[:server]
    points_server = sc_se * 15
    points_receiver = sc_re * 15
    if sc_re < 3 and sc_se < 3
      "#{points_server}-#{points_receiver}"
    elsif sc_re < 4 and sc_se < 4 and sc_se != sc_re
      if sc_re == 3
        points_receiver = 40
      end
      if sc_se == 3
        points_server = 40
      end
      "#{points_server}-#{points_receiver}"
    else 
      diff = sc_se - sc_re 
      if diff == 0
         "Deuce"
      elsif diff == 1
         "A-server"
      elsif diff == -1
         "A-receiver"
      elsif diff > 1
        "W-L"
      else
         "L-W"
      end
    end
  end

  def give_point_to(player)
    other = OPPOSITE_SIDE_OF_NET[player]
    fail "Unknown player #{player}" unless other
    @score[player] += 1
  end
end
