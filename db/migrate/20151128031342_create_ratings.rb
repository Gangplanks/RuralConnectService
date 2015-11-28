class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :user_id
      t.integer :scheme_id
      t.integer :rating

      t.timestamps null: false
    end
    add_foreign_key :ratings, :users
    add_foreign_key :ratings, :schemes
  end
end
