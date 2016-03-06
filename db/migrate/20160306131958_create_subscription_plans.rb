class CreateSubscriptionPlans < ActiveRecord::Migration
  def change
    create_table :subscription_plans do |t|
      t.string :name, null: false
      t.decimal :price, null: false
      t.string :currency, null: false
      t.decimal :commission, null: false
      t.string :plan_description, null: false

      t.timestamps null: false
    end
  end
end
