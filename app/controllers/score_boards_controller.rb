class ScoreBoardsController < ApplicationController
  def change_score
    score = ScoreBoardHelper.change_score(params.require(:home_score), params.require(:away_score))
    render json: { home_score: score.first, away_score: score.last }
  end
end