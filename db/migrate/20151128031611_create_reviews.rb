class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :scheme_id
      t.string :type
      t.string :content

      t.timestamps null: false
    end
    add_foreign_key :reviews, :users
    add_foreign_key :reviews, :schemes
  end
end
