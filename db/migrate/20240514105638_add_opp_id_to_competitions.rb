class AddOppIdToCompetitions < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :competitions, :users, column: :opp_id, primary_key: :id
  end
end
