class TeamMember < ActiveRecord::Base
  validates :name,
			  presence: true,
			  length: { minimum: 6},
			  uniqueness: true
	validates :image,
			  presence: true
	validates :quote,
			  presence: true
  validates :email,
        presence: true,
        uniqueness: true
end
