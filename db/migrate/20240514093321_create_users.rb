class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :email
      t.string :gamer_tag
      t.integer :win
      t.integer :loss
      t.float :tokens, default: 100.00

      t.timestamps
    end
  end
end
