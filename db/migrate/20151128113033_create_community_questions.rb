class CreateCommunityQuestions < ActiveRecord::Migration
  def change
    create_table :community_questions do |t|
      t.string :userId
      t.string :communityId
      t.text :question

      t.timestamps null: false
    end
  end
end
