class AddTextField < ActiveRecord::Migration
  def change
    add_column :events, :demo_company_text, :string
  end
end
