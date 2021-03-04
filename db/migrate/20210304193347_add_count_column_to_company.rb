class AddCountColumnToCompany < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :count, :integer
  end
end
