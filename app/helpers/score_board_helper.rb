module ScoreBoardHelper
  def self.change_score(home_score, away_score)
    hs = home_score.gsub(/[^0-9]/,"")
    as = away_score.gsub(/[^0-9]/,"")
    [hs, as].tap do
      score_path = '/home/pi/scripts/scoreboard/scores.json'
      File.open(score_path, "w") { |f| f.write "{\n  \"home_score\":#{hs},\n  \"away_score\":#{as}\n}\n" }
    end
  end
end