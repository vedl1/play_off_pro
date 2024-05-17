class CompetitionsController < ApplicationController
  def new
    @competition = Competition.new
    @game = Game.find(params[:game_id])
  end

  def create
    @competition = Competition.new(competition_params)

  end

  def waiting
    #
  end

  def invitation
  end

end
