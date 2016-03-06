class CreateSubscriptionPlanDetails < ActiveRecord::Migration
  def change
    create_table :subscription_plan_details do |t|
      t.string :amount_of_ads, null: false
      t.boolean :company_profile, default: false, null: false
      t.boolean :video_tutorials, default: false, null: false
      t.boolean :verified_account, default: false, null: false
      t.boolean :review_status, default: false, null: false
      t.boolean :ad_free_use, default: false, null: false
      t.boolean :yearly_national_subscriptions_event, default: false, null: false
      t.boolean :access_exclusive_webinars_topspeakers, default: false, null: false
      t.boolean :customized_profile, default: false, null: false
      t.string :rotating_ads_on_homepage, null: false
      t.boolean :one_Office_365_account, default: false, null: false
      t.integer :subscription_plan_id, null: false

      t.timestamps null: false
    end
  end
end
