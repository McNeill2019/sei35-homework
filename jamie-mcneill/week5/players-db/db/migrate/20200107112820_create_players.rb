class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|

      t.integer :world_ranking
      t.string :name
      t.integer :age
      t.string :country
      t.float :prize_money
      t.integer :titles
      t.text :image

    end
  end
end
