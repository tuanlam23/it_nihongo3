class Book < ApplicationRecord
	mount_base64_uploader :picture, PhotoBookUploader
	belongs_to :user
	has_one :category
	has_many :reviews
	validates :user, presence: true
end
