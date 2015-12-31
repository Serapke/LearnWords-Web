class Duk < ActiveRecord::Base
  validates :query,
    presence: true
  validates :answer,
    presence: true,
    length: { maximum: 600 }
end
