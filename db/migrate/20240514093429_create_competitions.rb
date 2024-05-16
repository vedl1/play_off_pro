class CreateCompetitions < ActiveRecord::Migration[7.1]
  def change
    create_table :competitions do |t|
      t.references :user, null: false, foreign_key: true
      t.boolean :completed
      t.references :game, null: false, foreign_key: true
      t.references :opp
      t.boolean :accepted?
      t.float :wager
      t.string :platform
      t.timestamps
    end
  end
end
