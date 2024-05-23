class PagesController < ApplicationController
  def home
  end

  def dashboard
    @wins = current_user.results.count {|r| r.win }
    @losses = current_user.results.count - @wins
    @competition = current_user.competitions.last
    @opp = User.find(@competition.opp_id)
    if @competition.results.first
      @result = @competition.results.select do |r|
        r.user == current_user
      end
      @r = @result.first.win ? "W" : "L"
    elsif current_user.results.last
      @r = current_user.results.last.win ? "W" : "L"
      @competition = current_user.results.last.competition
    end
  end
  def invitations
  @competitions = Competition.where(opp_id: current_user.id)
  end
end
