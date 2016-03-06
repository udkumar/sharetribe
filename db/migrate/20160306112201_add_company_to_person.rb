class AddCompanyToPerson < ActiveRecord::Migration
  def change
    add_column :people, :string, :company
  end
end
