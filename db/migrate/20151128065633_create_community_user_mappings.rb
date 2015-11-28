class CreateCommunityUserMappings < ActiveRecord::Migration
  def change
    create_table :community_user_mappings do |t|
      t.string :userId
      t.string :communityId

      t.timestamps null: false
    end
  end
end
