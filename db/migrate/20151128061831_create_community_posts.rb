class CreateCommunityPosts < ActiveRecord::Migration
  def change
    create_table :community_posts do |t|
      t.integer :user_id
      t.integer :community_id
      t.string :type
      t.binary :content

      t.timestamps null: false
    end
  end
end
