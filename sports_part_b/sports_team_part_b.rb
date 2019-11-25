class SportsTeam

  attr_accessor(:team_name, :players, :coach, :points)

  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  def add_new_player(name)
    players.push(name)
  end

  def check_if_player_on_team(name)
    for player in players
      if player == name
        return true
      else
        return false
      end
    end
  end

  def team_win_or_lose(result)
    if result == "win"
      @points += 1
    else
      return @points

    end
  end



end
