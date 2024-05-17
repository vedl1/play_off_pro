class Competition < ApplicationRecord
attr_accessor :gamer_tag
  belongs_to :user
  belongs_to :game
  belongs_to :opp, :class_name => "User"

  def gamer_tag
  end
end
