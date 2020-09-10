class CreateCults < ActiveRecord::Migration[6.0]
  def change
    create_table :cults do |t|
      t.string :name
      t.string :location
      t.integer :founding_year
      t.text :slogan
      t.integer :minimum_age

      t.timestamps
    end
  end
end
