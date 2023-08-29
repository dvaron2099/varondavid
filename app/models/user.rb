class User < ApplicationRecord
  has_one_attached :curriculum
  has_one_attached :photo
end
