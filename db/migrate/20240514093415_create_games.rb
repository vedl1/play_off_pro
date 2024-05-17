class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string :platform
      t.string :title
      t.string :image_url
      t.timestamps
    end
  end
end
