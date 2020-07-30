class Capability < ApplicationRecord
  belongs_to :doctor
  belongs_to :specialty

end


#C'est la table de jointure entre les médecins et les spécialités