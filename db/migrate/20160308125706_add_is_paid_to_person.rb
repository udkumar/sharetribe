class AddIsPaidToPerson < ActiveRecord::Migration
  def change
    add_column :people, :is_paid, :boolean
  end
end
