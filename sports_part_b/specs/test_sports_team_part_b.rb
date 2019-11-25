require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team_part_b')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportsTeam < MiniTest::Test



def test_team_name
  sportsteam = SportsTeam.new("Panthers", ["Dave", "Jimmy", "Bob"], "Gunther", 0)
  assert_equal("Panthers", sportsteam.team_name)
end

def test_get_players
  sportsteam = SportsTeam.new("Panthers", ["Dave", "Jimmy", "Bob"], "Gunther", 0)
  assert_equal(["Dave", "Jimmy", "Bob"], sportsteam.players)
end

def test_get_coach_name
  sportsteam = SportsTeam.new("Panthers", ["Dave", "Jimmy", "Bob"], "Gunther", 0)
  assert_equal("Gunther", sportsteam.coach)
end

def test_set_coach_name
  sportsteam = SportsTeam.new("Panthers", ["Dave", "Jimmy", "Bob"], "Gunther", 0)
  sportsteam.coach = ("Felix")
  assert_equal("Felix", sportsteam.coach)
end

def test_add_new_player
  sportsteam = SportsTeam.new("Panthers", ["Dave", "Jimmy", "Bob"], "Gunther", 0)
  sportsteam.add_new_player("Dylan")
  assert_equal(["Dave", "Jimmy", "Bob", "Dylan"], sportsteam.players)
end

def test_check_if_player_on_team_is_true
  sportsteam = SportsTeam.new("Panthers", ["Dave", "Jimmy", "Bob"], "Gunther", 0)
  sportsteam.check_if_player_on_team("Dave")
  assert_equal(true, sportsteam.check_if_player_on_team("Dave"))
end

def test_check_if_player_on_team_is_false
  sportsteam = SportsTeam.new("Panthers", ["Dave", "Jimmy", "Bob"], "Gunther", 0)
  sportsteam.check_if_player_on_team("Jeff")
  assert_equal(false, sportsteam.check_if_player_on_team("Jeff"))
end

def test_team_win_or_lose_team_lost
  sportsteam = SportsTeam.new("Panthers", ["Dave", "Jimmy", "Bob"], "Gunther", 0)
  assert_equal(0, sportsteam.team_win_or_lose("lost"))
end

def test_team_win_or_lose_team_won
  sportsteam = SportsTeam.new("Panthers", ["Dave", "Jimmy", "Bob"], "Gunther", 0)
  assert_equal(1, sportsteam.team_win_or_lose("win"))
end



end
