class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :email
      t.string :username
      t.integer :points
      t.boolean :active

      t.timestamps null: false
    end
  end
end
