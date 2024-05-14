class Competition < ApplicationRecord
  belongs_to :user
  belongs_to :game
  belongs_to :opp, :class_name => "User"
end
