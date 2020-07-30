class Specialty < ApplicationRecord
  has_many :capabilities
  has_many :specialities, through: :capabilities
end
