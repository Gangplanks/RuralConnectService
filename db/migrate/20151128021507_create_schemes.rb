class CreateSchemes < ActiveRecord::Migration
  def change
    create_table :schemes do |t|
      t.string :name
      t.string :department
      t.string :beneficiaries
      t.string :funding_pattern
      t.string :jurisdiction
      t.string :age_eligible
      t.string :income_eligible
      t.string :community_eligible
      t.string :others_eligible
      t.string :avail_from
      t.string :valid_from
      t.string :valid_till
      t.string :description

      t.timestamps null: false
    end
  end
end
