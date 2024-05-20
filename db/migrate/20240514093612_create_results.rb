class CreateResults < ActiveRecord::Migration[7.1]
  def change
    create_table :results do |t|
      t.references :competition, null: false, foreign_key: true
      t.float :token
      t.boolean :win
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
