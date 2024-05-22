class ResultsController < ApplicationController

  def show
    @competition = Competition.find(params[:id])
    @wresult = @competition.results.second
    @lresult = @competition.results.first
  end


  def create
    @competition = Competition.find(params[:id])
    @wresult = Result.new
    @lresult = Result.new
    @opp = User.find(@competition.opp_id)
    @wresult.competition = @competition
    @lresult.competition = @competition

    @wresult.user = current_user
    @lresult.user = @opp

    @wresult.win = true
    @lresult.win = false
    @wresult.token = (@competition.wager * 2)
    @lresult.token = (@competition.wager * 2)
    current_user.tokens + @wresult.token
    @opp.tokens - @lresult.token
    @wresult.save
    @lresult.save

    @wstat = Stat.new
    @lstat = Stat.new
    @wstat.user = current_user
    @lstat.user = @opp
    @wstat.competition = @competition
    @lstat.competition = @competition
    @wstat.kills = 22
    @lstat.kills = 3
    @wstat.damage = 1904
    @lstat.damage = 263
    @wstat.kd_ratio = 7.30
    @lstat.kd_ratio = 0.136

    @lstat.save
    @wstat.save
    redirect_to competition_stats_path(@competition)
  end

end
