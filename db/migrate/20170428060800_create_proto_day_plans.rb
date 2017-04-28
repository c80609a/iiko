class CreateProtoDayPlans < ActiveRecord::Migration[5.0]
  def change
    create_table :proto_day_plans do |t|
      t.string :title
      t.string :kind
      t.string :count
      t.string :assigned_person
      t.boolean :is_my
      t.string :status
      t.boolean :possible
      t.boolean :my_assignment
      t.integer :related
      t.text :actions

      t.timestamps
    end
  end
end
