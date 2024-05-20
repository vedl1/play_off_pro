class CompetitionsController < ApplicationController
  def new
    @competition = Competition.new
    @game = Game.find(params[:game_id])
  end

  def create
    @game = Game.find(params[:game_id])
    @competition = Competition.new(competition_params)
    @competition.opp = User.find_by_gamer_tag(params[:competition][:gamer_tag])
    @competition.user = current_user
    @competition.game = Game.find(params[:game_id])
    @competition.platform = @competition.game.platform
    if @competition.save
      redirect_to competition_invitation_path(@competition)
    else
      render "new", status: :unprocessable_entity
    end

  end

  def invitation
    @competition = Competition.find(params[:id])
    if @competition.accepted
      redirect_to competition_loading_path(@competition)
    else
      render "invitation"
    end
  end

  def rematch
    create
  end

  def accept
    @competition = Competition.find(params[:id])
  end

  def agree
    @competition = Competition.find(params[:id])
    @competition.accepted = true
    @competition.save
    redirect_to competition_loading_path(@competition)
  end

  def stats
    @competition = Competition.find(params[:id])
    @wstat = @competition.stats.second
    @lstat = @competition.stats.first
  end

  def loading
    @competition = Competition.find(params[:id])
  end

  private

  def competition_params
    params.require(:competition).permit(:wager,:gamer_tag)
  end

  def set_users
    @user1 = User.find(params[:user_id])
    @user2 = User.find(params[:opp_id])
  end


end
