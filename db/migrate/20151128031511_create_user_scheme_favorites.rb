class CreateUserSchemeFavorites < ActiveRecord::Migration
  def change
    create_table :user_scheme_favorites do |t|
      t.integer :user_id
      t.integer :scheme_id

      t.timestamps null: false
    end
    add_foreign_key :user_scheme_favorites, :users
    add_foreign_key :user_scheme_favorites, :schemes
  end
end
