SubscriptionPlan.destroy_all
SubscriptionPlanDetail.destroy_all

subscription_plans = [
  [ "Preemium", 0, 5, "euro" ],
  [ "Premium Basic", 19, 2.75, "euro" ],
  [ "Premium Pro", 49, 2.0, "euro" ],
  [ "Premium VIP", 99, 1.5, "euro" ]
]
subscription_details = [
  [ "30", true, true, false, false, false, false, false, false, "", false ],
  [ "75", true, true, true, true, false, false, false, false, "5", false ],
  [ "150", true, true, true, true, true, true, false, false, "10", false ],
  [ "unlimited", true, true, true, true, true, true, true, true, "25", true ]
]

subscription_plans.each do |plan|
  SubscriptionPlan.create({name: plan[0], price: plan[1], commission: plan[2], currency: plan[3], plan_description: ""})
end
puts "subscription done"

SubscriptionPlan.all.each_with_index do |plan, index|
  detail = subscription_details[index]
  SubscriptionPlanDetail.create(
    :amount_of_ads => detail[0],
    :company_profile => detail[1],
    :video_tutorials => detail[2],
    :verified_account => detail[3],
    :review_status => detail[4],
    :ad_free_use => detail[5],
    :yearly_national_subscriptions_event => detail[6],
    :access_exclusive_webinars_topspeakers => detail[7],
    :customized_profile => detail[8],
    :rotating_ads_on_homepage => detail[9],
    :one_Office_365_account => detail[10],
    :subscription_plan_id => plan.id
  )
end
puts "subscription plan detail done"










