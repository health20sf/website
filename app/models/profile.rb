class Profile < ActiveRecord::Base
  belongs_to :user
  
  def self.search(search_term)
    like_query = "%#{search_term}%".downcase
    Profile.where("(lower(profiles.first_name) LIKE ? OR \
      lower(profiles.last_name) LIKE ? OR 
      lower(profiles.profession) LIKE ? OR \
      lower(profiles.company_name) LIKE ? OR \
      lower(profiles.industry) LIKE ? OR \
      lower(profiles.industry_expertise) LIKE ?
      )", like_query, like_query, like_query, like_query, like_query, like_query)
      .limit(5)
  end
end
