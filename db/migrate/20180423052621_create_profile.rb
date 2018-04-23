class CreateProfile < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :title
      t.string :profession
      t.string :industry
      t.string :company_name
      t.string :phone_number
      t.string :industry_expertise
      t.string :linkedin_url
      t.string :preferred_method_of_contact
      t.string :network_topic
      t.timestamps null: false
    end
  end
end
