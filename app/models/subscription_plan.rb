# == Schema Information
#
# Table name: subscription_plans
#
#  id               :integer          not null, primary key
#  name             :string(255)      not null
#  price            :decimal(10, )    not null
#  currency         :string(255)      not null
#  commission       :decimal(10, )    not null
#  plan_description :string(255)      not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class SubscriptionPlan < ActiveRecord::Base

  has_one :people, :dependent => :destroy
  has_many :subscription_plan_details
end
