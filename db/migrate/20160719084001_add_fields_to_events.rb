class AddFieldsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :speaker_name, :string
    add_column :events, :speaker_image, :string
    add_column :events, :speaker_image_url, :string
    add_column :events, :speaker_date, :string
    add_column :events, :demo_company_one_image, :string
    add_column :events, :demo_company_one_url, :string
    add_column :events, :demo_company_two_image, :string
    add_column :events, :demo_company_two_url, :string
    add_column :events, :description, :string
    add_column :events, :eventbrite_link, :string
  end
end
