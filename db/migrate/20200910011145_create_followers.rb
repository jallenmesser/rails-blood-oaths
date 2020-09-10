class CreateFollowers < ActiveRecord::Migration[6.0]
  def change
    create_table :followers do |t|
      t.string :name
      t.integer :age
      t.text :life_motto

      t.timestamps
    end
  end
end
