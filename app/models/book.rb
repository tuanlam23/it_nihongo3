class Book < ApplicationRecord
	mount_base64_uploader :picture, PhotoBookUploader
	belongs_to :user
  belongs_to :category
	has_many :reviews
	validates :user, presence: true
end
