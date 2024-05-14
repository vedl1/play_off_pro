class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :email
      t.string :gamer_tag
      t.integer :win
      t.integer :loss

      t.timestamps
    end
  end
end
