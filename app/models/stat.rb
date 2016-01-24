class Stat < ActiveRecord::Base
	validates :downloads,
		presence: true
end
