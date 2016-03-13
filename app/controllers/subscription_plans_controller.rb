class SubscriptionPlansController < ApplicationController

  def index
    @subscription_plan = @current_user.subscription_plan
  end

  def update_payment
    @current_user.update_attributes(payment_status: "processing")
    redirect_to subscription_plan_path, notice: "Payment updation is in process"
  end

end
