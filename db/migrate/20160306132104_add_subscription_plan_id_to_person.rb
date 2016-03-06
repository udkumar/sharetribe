class AddSubscriptionPlanIdToPerson < ActiveRecord::Migration
  def change
    add_column :people, :subscription_plan_id, :integer
  end
end
