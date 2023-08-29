class Technology < ApplicationRecord
  has_many :project_technologies
  has_many :projects, through: :project_technologies
  has_one_attached :photo
end
