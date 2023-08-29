class Project < ApplicationRecord
  has_many :project_technologies
  has_many :technologies, through: :project_technologies
  has_many_attached :photos
end
