class CompetitionsController < ApplicationController
  def new
    @competition = Competition.new
    @game = Game.find(params[:game_id])
  end

  def invitation
  end

end
