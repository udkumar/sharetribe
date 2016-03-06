# == Schema Information
#
# Table name: subscription_plan_details
#
#  id                                    :integer          not null, primary key
#  amount_of_ads                         :string(255)      not null
#  company_profile                       :boolean          default(FALSE), not null
#  video_tutorials                       :boolean          default(FALSE), not null
#  verified_account                      :boolean          default(FALSE), not null
#  review_status                         :boolean          default(FALSE), not null
#  ad_free_use                           :boolean          default(FALSE), not null
#  yearly_national_subscriptions_event   :boolean          default(FALSE), not null
#  access_exclusive_webinars_topspeakers :boolean          default(FALSE), not null
#  customized_profile                    :boolean          default(FALSE), not null
#  rotating_ads_on_homepage              :string(255)      not null
#  one_Office_365_account                :boolean          default(FALSE), not null
#  subscription_plan_id                  :integer          not null
#  created_at                            :datetime         not null
#  updated_at                            :datetime         not null
#

require 'rails_helper'

RSpec.describe SubscriptionPlanDetail, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
