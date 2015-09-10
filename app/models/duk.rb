class Duk < ActiveRecord::Base
  validates :query,
    presence: true
  validates :answer,
    presence: true
end
