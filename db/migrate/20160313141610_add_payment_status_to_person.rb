class AddPaymentStatusToPerson < ActiveRecord::Migration
  def change
    add_column :people, :payment_status, :string, default: "pending", null: false
  end
end
