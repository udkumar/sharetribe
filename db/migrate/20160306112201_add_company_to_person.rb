class AddCompanyToPerson < ActiveRecord::Migration
  def change
    add_column :people, :company, :string
  end
end
