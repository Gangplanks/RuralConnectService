class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :age
      t.string :income
      t.string :community
      t.string :occupation
      t.string :state

      t.timestamps null: false
    end
  end
end
