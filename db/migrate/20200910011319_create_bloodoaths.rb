class CreateBloodoaths < ActiveRecord::Migration[6.0]
  def change
    create_table :bloodoaths do |t|
      t.references :cult, null: false, foreign_key: true
      t.references :follower, null: false, foreign_key: true
      t.datetime :initation_date

      t.timestamps
    end
  end
end
