class CreateStats < ActiveRecord::Migration[7.1]
  def change
    create_table :stats do |t|
      t.references :user, null: false, foreign_key: true
      t.references :competition, null: false, foreign_key: true
      t.string :name
      t.integer :amount

      t.timestamps
    end
  end
end
