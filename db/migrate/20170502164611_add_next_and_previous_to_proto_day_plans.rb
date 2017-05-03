class AddNextAndPreviousToProtoDayPlans < ActiveRecord::Migration[5.0]
  def change
    add_column :proto_day_plans, :next, :string
    add_column :proto_day_plans, :previous, :string
  end
end
